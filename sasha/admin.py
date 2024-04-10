from django.contrib import admin

from sasha.models import Rocket


@admin.register(Rocket)
class RocketAdmin(admin.ModelAdmin):
    pass

