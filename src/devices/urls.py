from django.conf.urls import url

from django.utils.translation import ugettext_lazy as _
import devices.views

urlpatterns = [
    url(_(r'^$'), #POST & GET devices
        devices.views.DeviceView.as_view(),
        name='manageDevice'),
   
]
