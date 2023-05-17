from django.test import TestCase
from django.contrib.auth.models import User
from rest_framework.test import APIClient
# Create your tests here.
#new_post = Posts.num_likes

class login_test_case(TestCase):
    def setup(self):
        self.User = User.objects.create_user(username= 'dfa123', password= 'abc123')
        self.client = APIClient()

    
    def test_login(self):
        response = self.client.post('/Login/', {'username': 'dfa123', 'password': 'abc123'})
        print(response)
        self.assertEqual(response.status_code, 404)

"""
class RegistrationTestCase(TestCase):
    def setUp(self):
        self.client = APIClient()

    def test_registration(self):
        response = self.client.post('/register/',  {"username": "johnl23",
        "first_name": "Eminem",
        "last_name": "The show",
        "cuny_email": "Eminemtheshow@myhunter.cuny.edu",
        "major": "",
        "CUNY": "",
        "graduation_year": 2024,
        "birth_date":  "2023-03-06"})
        self.assertEqual(response.status_code, 201)
        self.assertTrue(User.objects.filter(username='newuser').exists())
"""