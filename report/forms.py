from django import forms
from django.core.exceptions import NON_FIELD_ERRORS
from .models import ClinicalInformation, Family, UploadPDF

class FamilyForm(forms.ModelForm):
    class Meta:
        model = Family
        fields = ('family_id', 'sample_id', 'sample_name')
        error_messages = {
            NON_FIELD_ERRORS: {
                'unique_together': "%(model_name)s's %(field_labels)s are not unique.",
            }
        }

class ClinicalInformationForm(forms.ModelForm):
    class Meta:
        model = ClinicalInformation
        fields = ('disease', 'gene', 'variant')
        error_messages = {
            NON_FIELD_ERRORS: {
                'unique_together': "%(model_name)s's %(field_labels)s are not unique.",
            }
        }

class UploadPDForm(forms.ModelForm):
    class Meta:
        model = UploadPDF
        fields = ('clinical_information', 'family', 'pdf')
