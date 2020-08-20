from django.db import models
from datetime import datetime

# Create your models here.
def upload_filename(instance, filename):
    timestamp = datetime.now().strftime("%Y%m%d%H%M%S")
    new_filename = "documents/{family}-{sample}-{name}-{gene}-{upload}.pdf".format(
        family = instance.family_id,
        sample = instance.sample_id,
        name = instance.name,
        gene = instance.gene,
        upload = timestamp
    )
    print("OLD: " + filename)
    print("NEW: " + new_filename)
    return new_filename

class ClinicalInformation(models.Model):
    disease = models.CharField(max_length = 200, blank=True, null=True)
    gene = models.CharField(max_length = 200, blank=True, null=True)
    variant = models.CharField(max_length = 200, blank=True, null=True)
    updated_at = models.DateTimeField(auto_now = True, blank=True)
    class Meta:
        ordering = ['disease']
        unique_together = (
            ('disease', 'gene', 'variant')
        )
    def __str__(self):
        return "{}:{}".format(self.disease, self.variant)

class Family(models.Model):
    family_id = models.CharField(max_length = 200, blank=True, null=True)
    sample_id = models.CharField(max_length = 200, blank=True, null=True)
    sample_name = models.CharField(max_length = 200, blank=True, null=True)
    updated_at = models.DateTimeField(auto_now = True, blank=True)
    created_at = models.DateTimeField(auto_now_add = True, blank=True)
    class Meta:
        unique_together = (
            ('family_id', 'sample_name')
        )

class UploadPDF(models.Model):
    clinical_information = models.ForeignKey(ClinicalInformation, on_delete = models.CASCADE)
    family = models.ForeignKey(Family, on_delete = models.CASCADE)
    pdf = models.FileField(upload_to=upload_filename)
    uploaded_at = models.DateTimeField(auto_now_add=True)
    def __str__(self):
        return join(" ",
                    (self.family.sample_name , self.clinical_information.disease, self.clinical_information.gene)
                    )
