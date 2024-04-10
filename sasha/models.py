from django.db import models


class Rocket(models.Model):
    name = models.CharField(
        'название',
        max_length=50
    )
    def __str__(self):
        return self.name