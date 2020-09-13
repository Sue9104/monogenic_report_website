from django.shortcuts import render
from django.contrib import messages
from django.shortcuts import render, get_object_or_404
from django.http import HttpResponse, HttpResponseRedirect, JsonResponse
from django.urls import reverse
from django.core.exceptions import ObjectDoesNotExist
from django.views.generic import TemplateView
from django.views.generic.edit import CreateView
from django.db.models import Count

from .models import Sample, Pathogenicity, Report
from .forms import ReportForm

# Create your views here.
def index(request):
    reports = Report.objects.all()
    if 'family' in request.GET:
        reports = reports.filter(sample__family__icontains = request.GET['family'])
    if 'name' in request.GET:
        reports = reports.filter(sample__name__icontains = request.GET['name'])
    if 'disease' in request.GET:
        reports = reports.filter(pathogenicity__disease__icontains = request.GET['disease'])
    if 'gene' in request.GET:
        reports = reports.filter(pathogenicity__gene__icontains = request.GET['gene'])
    if 'variant' in request.GET:
        reports = reports.filter(pathogenicity__variant__icontains = request.GET['variant'])
    return render(request, 'report/index.html', {
        'reports': reports
    })

def model_form_upload(request):
    if request.method == 'POST':
        #check family and sample name exists
        try:
            sample_obj = Sample.objects.get(
                family = request.POST['family'],
                name = request.POST['name']
            )
        except ObjectDoesNotExist:
            sample_obj = Sample(
                id = Sample.objects.order_by('-id')[0].id + 1,
                family = request.POST['family'],
                name = request.POST['name']
            )
            sample_obj.save()

        #check pathogenicity exists
        try:
            pathogenicity_obj = Pathogenicity.objects.get(
                disease = request.POST['disease'],
                gene = request.POST['gene'],
                variant = request.POST['variant']
            )
        except ObjectDoesNotExist:
            pathogenicity_obj = Pathogenicity(
                id = Pathogenicity.objects.order_by('-id')[0].id + 1,
                disease = request.POST['disease'],
                gene = request.POST['gene'],
                variant = request.POST['variant']
            )
            pathogenicity_obj.save()

        # upload pdf and link to sample and pathogenicity
        report_obj = Report(
            id = Report.objects.order_by('-id')[0].id + 1,
            pdf = request.FILES['pdf'],
            pathogenicity = pathogenicity_obj,
            sample = sample_obj
        )
        try:
            report_obj.save()
            messages.success(request, '报告上传成功！')
            return HttpResponseRedirect(reverse('report:index'))
        except:
            messages.error(request, '报告上传失败！')
            return HttpResponseRedirect(reverse('report:upload'))
    report_form = ReportForm()
    return render(request, 'report/upload.html', {
        'form': report_form
    })


class ReportCreate(CreateView):
    model = Report
    fields = ['sample', 'pathogenicity', 'pdf']
    template_name_suffix = '_create_form'

class Statistics(TemplateView):
    template_name = "report/statistics.html"

def echarts_data(request):
    report_data = Report.objects.all()
    years = [2015, 2016, 2017, 2018, 2019, 2020]
    counts = [ report_data.filter(uploaded_at__year=y).count() for y in years]
    genes = report_data.values('pathogenicity__gene')\
        .annotate(gene_counts = Count('sample__family', distinct=True))\
        .order_by('-gene_counts')[0:10]
    diseases = report_data.filter(pathogenicity__disease__isnull=False)\
        .values('pathogenicity__disease')\
        .annotate(disease_counts = Count('sample__family', distinct=True))\
        .order_by('-disease_counts')[0:10]
    jsondata = {
        "years": years,
        "counts": counts,
        "top_10_genes": [x['pathogenicity__gene'] for x in genes],
        "top_10_gene_counts": [x['gene_counts'] for x in genes],
        "top_10_diseases": [x['pathogenicity__disease'] for x in diseases],
        "top_10_disease_counts": [x['disease_counts'] for x in diseases],
    }

    return JsonResponse(jsondata)
