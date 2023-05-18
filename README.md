Cunnect

This is a social network application made specifically for CUNY students.
The primary purpose of the social network is to provide a bridge of communication or connection for CUNY students. Our goal is to transform CUNY into a more social environemnt by creating a place for students to start building genuine connections with their fellow classmates.


There are two codebases for this project. One using Django's REST Framework for our backend and another using Swift for our UI. This repository holds the Django portion (https://github.com/justinlim7/Cunnect_app/tree/master) and here is where you can find the Swift portion: https://github.com/upashna9/Cunnect_UI


NOTE:
If you wish to simulate what our app looks like, the most reliable way is to use Xcode available primarily through Mac/macOS. 

Backend Overview (Master Branch):
Our backend is built using django rest framework and python. The database of our backend is configured with sqlite3. The endpoints that the frontend access to our backend is listed below: 

Registration-
endpoint is accessed to register a new user into our social network
Posts-
endpoint is accessed to either get all posts made on the social network or posts a post on the social network
UserProfile-
endpoint is accessed to view a given users profile:

To run our backend first git clone the backend repository 
change the directory to Cunnect_app
enter the command in the terminal : python manage.py runserver
the following url to a backend server will be in the terminal
 http://127.0.0.1:8000/
 clicking this url will take you to our backend server and allow you to access it and its endpoints.
 This backend must be currently running for the frontend on Xcode to successfully build.
 
 
 
 
 
 Frontend Overview (upashna9-UI Repo):
 Our frontend is built using Swift & Xcode. These technologies are required to run our app as shown in the demo. In addition, the django backend server must be running at the same time.
 
 In order to access our apps functionalities you must run a build in Xcode for each swift file.
 
 Registering a User
 RegistrationView.Swift when running a build on this swift file in Xcode the user will be taken to a registration page and register their given information to Cunnect.
 
 Getting a UserProfile
 UserProfileView.swift when running a build on this swift file in Xcode the user will be able to view a users profile page.
 
 Getting posts and making a post
 FeedView.swift when running a build on this swift file in Code the user will be able to view all posts in a feed page. The user will also be able to make a posts with a caption
