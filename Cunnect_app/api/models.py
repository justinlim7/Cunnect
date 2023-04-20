from django.db import models
from django.contrib.auth.models import User, AbstractBaseUser
import uuid
from datetime import datetime
# Create your models here.

CUNY_choices = (('Baruch College','Baruch College'), ('Borough of Manhattan Community College','Borough of Manhattan Community College'), 
                ('Bronx Community College','Bronx Community College'), ('Brooklyn College','Brooklyn College'), 
                ('College of Staten Island','College of Staten Island'), ('Craig Newmark Graduate School of Journalism','Craig Newmark Graduate School of Journalism'),
                ('CUNY Graduate Center','CUNY Graduate Center'), ('CUNY School of Professional Studies','CUNY School of Professional Studies'), 
                ('Guttman Community College','Guttman Community College'), ('Hostos Community College','Hostos Community College'), 
                ('Hunter College','Hunter College'), ('John Jay College of Criminal Justice','John Jay College of Criminal Justice'), 
                ('Kingsborough Community College','Kingsborough Community College'), ('LaGuardia Community College','LaGuardia Community College'),
                ('Lehman College','Lehman College'), ('Macaulay Honors College','Macaulay Honors College'), ('Medgar Evers College','Medgar Evers College'),
                ('New York City College of Technology','New York City College of Technology'), ('Queens College','Queens College'), ('Queensborough Community College','Queensborough Community College'),
                ('The City College of New York','The City College of New York'), ('York College','York College'))

class User(User):
    cuny_email = models.EmailField(unique = True)
    #first_name = models.CharField(max_length =100, blank = False)
    #last_name = models.CharField(max_length = 100, blank = False)
    major = models.CharField(max_length=100, blank=True)
    CUNY = models.CharField(max_length=100, choices = CUNY_choices, blank = False)
    graduation_year = models.IntegerField(blank=True, null=True)
    birth_date = models.DateField(null=True, blank=True)
    date_user_joined = models.DateTimeField(auto_now_add= True)
    def __str__(self):
        return self.username
    
class UserProfile(models.Model):
    user = models.OneToOneField(User, on_delete=models.CASCADE)
    bio = models.TextField(max_length=500, blank=True)
    major = models.CharField(max_length=100, blank=True)
    CUNY = models.CharField(max_length=100, choices = CUNY_choices, blank = False)
    birth_date = models.DateField(null=True, blank=True)
    profile_pic = models.ImageField(upload_to='profile_pics', blank=True, null= True)
    date_user_joined = models.DateTimeField(auto_now_add= True)

    def __str__(self): #self represents the userprofile model
        return self.user.first_name 
   
#TODO
class Posts(models.Model):
    #write the fields for column names
    #user = models.CharField(max_length=100)
    user = models.ForeignKey(User, on_delete=models.CASCADE)
    image = models.ImageField(upload_to='post_image', blank=True, null=True )
    caption = models.TextField(max_length=500)
    date_created = models.DateTimeField(default=datetime.now)
    
    def __str__(self): #self refers to the instance of the specific post model
        return self.caption
    
    def num_likes(self):
        return self.likes_set.count() #return the number of likes from the instance of the post serializer class
    
    def users_who_liked(self):
        return [Likes.user for Likes in self.likes_set.all()] #return the list of users who liked the post
    
    def comments(self):
        return self.comment_set.all() #return the comments of the post serializer class

class Likes(models.Model):
    post = models.ForeignKey(Posts, on_delete= models.CASCADE) #the post that is being liked
    user = models.ForeignKey(User, on_delete= models.CASCADE) #the user that liked the post


class Comment(models.Model):
    post = models.ForeignKey(Posts, on_delete= models.CASCADE) #the post that is being commented
    user = models.ForeignKey(User, on_delete = models.CASCADE) #the user making the comment
    text = models.CharField(max_length = 100) #the comment made on the post
    created_at = models.DateTimeField(auto_now_add = True)



        