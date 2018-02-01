from django.conf.urls import url
from django.utils.translation import ugettext_lazy as _

import accounts.views

urlpatterns = [
    url(_(r'^/$'), #POST & GET users
        accounts.views.UserView.as_view(),
        name='manageUser'),
    url(_(r'^/session/$'), #POST session
        accounts.views.UserLoginView.as_view(),
        name='createSession'),
    url(_(r'^/confirm/email/(?P<activation_key>.*)/$'),
        accounts.views.UserConfirmEmailView.as_view(),
        name='confirm_email'),
    url(_(r'^/status/email/$'),
        accounts.views.UserEmailConfirmationStatusView.as_view(),
        name='status'),
]
