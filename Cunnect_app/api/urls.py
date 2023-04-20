from django.urls import path, include
from . import views
from rest_framework import routers
from knox import views as knox_views
# URLs are used to map URLs to views. In Django, you can define URL patterns that
#  map specific URLs to specific views.
router = routers.DefaultRouter()
router.register(r'UserProfile', views.UserProfileViewSet)
router.register(r'Register', views.RegisterViewset)
router.register(r'Login,', views.LoginAPI, basename='login')
router.register(r'Posts', views.Posts, basename= 'Posts')
router.register(r'Logout', views.LogoutViewSet, basename= 'Logout')
#router.register(r'RegisterView', views.RegisterView)

#python list of paths we can access
urlpatterns = [
    path('', include(router.urls)), 
    path('api-auth/', include('rest_framework.urls')),
    #path('Logout/', LogoutViewSet.as_view(), name='Logout')
]