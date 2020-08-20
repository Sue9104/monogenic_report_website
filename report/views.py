from django.shortcuts import render

# Create your views here.
from django.shortcuts import render, get_object_or_404
from django.http import HttpResponse, HttpResponseRedirect
from django.urls import reverse
from .forms import FamilyForm, ClinicalInformationForm, UploadPDForm
from .models import Family, ClinicalInformation, UploadPDF

# Create your views here.
def index(request):
    return render(request, 'report/index.html')

def model_form_upload(request):
    upload_form = UploadPDForm()
    if request.method == 'POST':
        #check family and sample name exists
        family_obj, family_created = Family.objects.get_or_create(
            family_id = request.POST['family_id'],
            sample_id = request.POST['sample_id'],
            sample_name = request.POST['sample_name'])
        #check clinical information exists
        clinical_obj, clinical_created = ClinicalInformation.objects.get_or_create(
            disease = request.POST['disease'],
            gene = request.POST['gene'],
            variant = request.POST['variant']
        )

        print("\n={}=\n".format(family_obj.id) )
        print("\n={}=\n".format(clinical_obj.id) )
        print("\n={}=\n".format(request.FILES['pdf']) )
        # upload pdf and link to family and clinical
        upload_pdf = UploadPDF(pdf = request.FILES['pdf'],
                               clinical_information = clinical_obj,
                               family = family_obj)
        upload_pdf.save()
        family_form = FamilyForm(request.POST)
        clinical_form = ClinicalInformationForm(request.POST)
        if family_form.is_valid() and clinical_form.is_valid():
            family = family_form.save()
            clinical = clinical_form.save()
            print("family id: {}\n".format(family.pk))
            print("clinical id: {}\n".format(clinical.pk))
            upload_form = UploadPDForm(request.POST, request.FILES,
                                       initial={'clinical_information': clinical.pk,
                                            'family': family.pk})
            print(upload_form)
            if upload_form.is_valid():
                upload_form.save()
                return HttpResponseRedirect('/report')
            else:
                print(upload_form.errors)
                print("UPLOAD PDF IS FAILED!!!")
        else:
            if not family_form.is_valid():
                print(family_form.errors)
            if not clinical_form.is_valid():
                print(clinical_form.errors)
    return render(request, 'report/upload.html', {
        'form': upload_form,
        'uploaded_file_url': 'report'
    })
