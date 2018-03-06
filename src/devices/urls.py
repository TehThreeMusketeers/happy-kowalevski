from django.conf.urls import url

from rest_framework.routers import SimpleRouter
from devices.viewset import *

router = SimpleRouter()
router.register(r'^/types', DeviceTypeViewSet)
router.register(r'^/events', DeviceEventViewSet, 'events')
router.register(r'^', DeviceViewSet)
router.register(r'^/(?P<deviceId>[0-9]+)/triggers', DeviceTriggerViewSet, 'devicetrigger')
router.register(r'^/groups/types', DeviceGroupTypeViewSet)
router.register(r'^/groups/(?P<groupId>[0-9]+)/triggers',DeviceGroupTriggerViewSet, 'grouptrigger')

urlpatterns = [
    url(r'^/(?P<pk>[0-9]+)/temp/?$', DeviceTempView.as_view()),
    url(r'^/(?P<pk>[0-9]+)/sound/?$', DeviceSoundView.as_view()),
    url(r'^/(?P<pk>[0-9]+)/light/?$', DeviceAmbLightView.as_view()),
    url(r'^/groups/?$', DeviceGroupView.as_view()),
    url(r'^/groups/(?P<pk>[0-9]+)/?$',DeviceGroupView.as_view()),
    url(r'^/groups/(?P<pk>[0-9]+)/functions/',DeviceGroupFunctionView.as_view()),
    url(r'^/groups/triggers/operators', DeviceGroupTriggerOperatorView.as_view()),
]

urlpatterns += router.urls
