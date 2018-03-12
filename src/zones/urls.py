from django.conf.urls import url

from rest_framework.routers import SimpleRouter
from zones.viewset import *

router = SimpleRouter()
router.register(r'^', ZoneViewSet)

urlpatterns = router.urls
