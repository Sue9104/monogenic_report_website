from django.shortcuts import render

# Create your views here.
from django.shortcuts import render, get_object_or_404
from django.http import HttpResponse, HttpResponseRedirect
from django.urls import reverse
from .forms import FamilyForm, ClinicalInformationForm, UploadPDForm
from .models import Family, ClinicalInformation, UploadPDF

# Create your views here.
def index(request):
    latest_pdfs = UploadPDF.objects.order_by('-uploaded_at')[:10]
    print("\n={}=\n".format(latest_pdfs[0].family.family) )
    return render(request, 'report/index.html', {
        'latest_pdfs': latest_pdfs
    })

def model_form_upload(request):
    if request.method == 'POST':
        #check family and sample name exists
        family_obj, family_created = Family.objects.get_or_create(
            family = request.POST['family'],
            name = request.POST['name'])
        #check clinical information exists
        clinical_obj, clinical_created = ClinicalInformation.objects.get_or_create(
            disease = request.POST['disease'],
            gene = request.POST['gene'],
            variant = request.POST['variant']
        )

        print("\n={}=\n".format(family_obj.id) )
        print("\n={}=\n".format(clinical_obj.id) )
        # upload pdf and link to family and clinical
        upload_pdf = UploadPDF(pdf = request.FILES['pdf'],
                               clinical_information = clinical_obj,
                               family = family_obj)
        upload_pdf.save()
    upload_form = UploadPDForm()
    return render(request, 'report/upload.html', {
        'form': upload_form,
        'uploaded_file_url': 'report'
    })
