from django.conf.urls import url

from rest_framework.routers import SimpleRouter
from devices.viewset import *
#from devices.viewset import DeviceViewSet, DeviceTypeViewSet, DeviceGroupView, DeviceGroupTypeViewSet, Devic

router = SimpleRouter()
router.register(r'^', DeviceViewSet)
router.register(r'^/types', DeviceTypeViewSet)
router.register(r'^/groups/types', DeviceGroupTypeViewSet)
router.register(r'^/groups/(?P<groupId>[0-9]+)/triggers',DeviceGroupTriggerViewSet, 'trigger')

urlpatterns = [
    url(r'^/groups/?$', DeviceGroupView.as_view()),
    url(r'^/groups/(?P<pk>[0-9]+)/?$',DeviceGroupView.as_view()),
    url(r'^/groups/(?P<pk>[0-9]+)/functions/',DeviceGroupFunctionView.as_view()),
    url(r'^/groups/triggers/operators', DeviceGroupTriggerOperatorView.as_view()),
]

urlpatterns += router.urls
