from django.conf.urls import url

from rest_framework.routers import SimpleRouter
from zones.viewset import *

router = SimpleRouter()
router.register(r'^', ZoneViewSet)

urlpatterns = [
    url(r'^/myzone/(?P<pk>[0-9]+)?$', UserLocationView.as_view()),
]

urlpatterns += router.urls
