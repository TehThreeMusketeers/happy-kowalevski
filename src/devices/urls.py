from django.conf.urls import url

from rest_framework.routers import SimpleRouter
from devices.viewset import DeviceViewSet, DeviceTypeViewSet, DeviceGroupView, DeviceGroupTypeViewSet

router = SimpleRouter()
router.register(r'^/types', DeviceTypeViewSet)
router.register(r'^', DeviceViewSet)
router.register(r'^/groups/types', DeviceGroupTypeViewSet)

urlpatterns = [
    url(r'^/groups/?$', DeviceGroupView.as_view()),
]

urlpatterns += router.urls
