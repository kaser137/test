from django.shortcuts import render

from sasha.models import Rocket


def index(request):
    return render(request, 'index.html')


def rocket(request):
    rockets = Rocket.objects.all()
    rocket = rockets[0]
    context = {
        'rockets': rockets,
        'rocket': rocket
    }
    return render(request, template_name="rocket.html", context=context)