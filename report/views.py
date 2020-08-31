from django.shortcuts import render
from django.contrib import messages
from django.shortcuts import render, get_object_or_404
from django.http import HttpResponse, HttpResponseRedirect
from django.urls import reverse
from django.core.exceptions import ObjectDoesNotExist

from .models import Sample, Pathogenicity, Report
from .forms import ReportForm

# Create your views here.
def index(request):
    latest_reports = Report.objects.order_by('-uploaded_at')[:20]
    return render(request, 'report/index.html', {
        'latest_reports': latest_reports
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
