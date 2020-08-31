from django import forms
from django.core.exceptions import NON_FIELD_ERRORS
from .models import Pathogenicity, Sample, Report

class SampleForm(forms.ModelForm):
    class Meta:
        model = Sample
        fields = ('family', 'name')
        error_messages = {
            NON_FIELD_ERRORS: {
                'unique_together': "%(model_name)s's %(field_labels)s are not unique.",
            }
        }

class PathogenicityForm(forms.ModelForm):
    class Meta:
        model = Pathogenicity
        fields = ('disease', 'gene', 'variant')
        error_messages = {
            NON_FIELD_ERRORS: {
                'unique_together': "%(model_name)s's %(field_labels)s are not unique.",
            }
        }

class ReportForm(forms.ModelForm):
    class Meta:
        model = Report
        fields = ('sample', 'pathogenicity', 'pdf')
