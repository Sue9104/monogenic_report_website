from django.db import models
from datetime import datetime

# Create your models here.
def upload_filename(instance, filename):
    timestamp = datetime.now().strftime("%Y%m%d%H%M%S")
    new_filename = "documents/{family}-{name}-{gene}-{upload}.pdf".format(
        family = instance.sample.family,
        name = instance.sample.name,
        gene = instance.pathogenicity.gene,
        upload = timestamp
    )
    print("OLD: " + filename)
    print("NEW: " + new_filename)
    return new_filename

class Pathogenicity(models.Model):
    disease = models.CharField(max_length = 200, blank=True, null=True)
    gene = models.CharField(max_length = 200, blank=True, null=True)
    variant = models.CharField(max_length = 200, blank=True, null=True)
    updated_at = models.DateTimeField(auto_now = True, blank=True)
    class Meta:
        ordering = ['disease']
        unique_together = (
            ('disease', 'gene', 'variant')
        )

class Sample(models.Model):
    family = models.CharField(max_length = 200, blank=True, null=True)
    name = models.CharField(max_length = 200, blank=True, null=True)
    updated_at = models.DateTimeField(auto_now = True, blank=True)
    class Meta:
        unique_together = (
            ('family', 'name')
        )

class Report(models.Model):
    sample = models.ForeignKey(Sample, on_delete = models.CASCADE)
    pathogenicity = models.ForeignKey(Pathogenicity, on_delete = models.CASCADE)
    pdf = models.FileField(upload_to=upload_filename)
    uploaded_at = models.DateTimeField(auto_now_add=True)
    def __str__(self):
        return join(" ",
                    (self.sample.name,
                     self.pathogenicity.disease,
                     self.pathogenicity.gene)
                    )
