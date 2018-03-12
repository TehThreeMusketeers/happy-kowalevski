from django.conf import settings
from django.conf.urls import include, url
from django.views.decorators.cache import cache_page

from base import views as base_views
from rest_framework.routers import SimpleRouter
from devices.viewset import DeviceViewSet

router = SimpleRouter()
router.register(r'^devices/?', DeviceViewSet)

urlpatterns = [
    url(r'^api/v1/accounts', include('accounts.urls', namespace='accounts')),
    url(r'^api/v1/getdata', include('base.urls', namespace='base')),
    url(r'^api/v1/devices', include('devices.urls', namespace='devices')),
    url(r'^api/v1/zones', include('zones.urls', namespace='zones')),

    # catch all others because of how history is handled by react router - cache this page because it will never change
    url(r'', cache_page(settings.PAGE_CACHE_SECONDS)(base_views.IndexView.as_view()), name='index'),
]
