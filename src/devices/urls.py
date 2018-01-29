from django.conf.urls import url

from devices import views as devices_views

urlpatterns = [
    url(r'',
        devices_views.DeviceRegisterView.as_view(),
        name='protected_data'),
   
]
