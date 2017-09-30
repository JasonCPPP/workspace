# mysite\books\urls.py

from django.conf.urls import url
from books import views

# app中的url文件不会自动生成，还要在mysite/url中添加链接
urlpatterns = [
    url(r'^search/$', views.search),
    url(r'^search-form/$', views.search_form),
]
