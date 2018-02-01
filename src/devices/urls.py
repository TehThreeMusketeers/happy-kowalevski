from django.conf.urls import url

from rest_framework.routers import SimpleRouter
from devices.viewset import DeviceViewSet, DeviceTypeViewSet

router = SimpleRouter()
router.register(r'^/types', DeviceTypeViewSet)
router.register(r'^', DeviceViewSet)

urlpatterns = router.urls
