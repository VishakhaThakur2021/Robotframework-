import json

import requests
from requests.auth import HTTPBasicAuth

url='http://localhost:8080'
user = 'Ryan'
passcode = 'abc2'
form_data = {"username":user,"password":passcode,"firstname":"Ryan","lastname":"Smith","phone":"+358234325768"}
payload = {"username":"Katie"}

#Register the user with POST
r=requests.post(url+'/register',data = form_data)
assert r.status_code == 200
print(r.content)
p=(r.headers.get('Content-Type'))
print("Registration is done for user")

#login the user with POST
r=requests.post(url+'/login',auth = HTTPBasicAuth(user,passcode),data = form_data)
assert r.status_code == 200
print(r.content)
print("login successful with valid credentials")

#GET the Token with valid user
r=requests.get(url+'/api/auth/token',auth = HTTPBasicAuth(user,passcode),data = form_data,)
assert r.status_code == 200
data_received =json.loads(r.content)
print(data_received)
token = data_received['token']
print(token +"Token is generated")

#Setting the token and header to access
headers = {'token' : token,'Content-Type': 'application/json'}
print("Token is set for Authentication")

#Get users
r=requests.get(url+'/api/users')
assert r.status_code == 200,"Status Ok"
print(r.json())
assert r.json() ['status'] == 'SUCCESS'
print("Fetch all the users  successfully")

#Token Autherization
r=requests.get(url + '/api/users/' + user,headers=headers)
print(r.status_code)
print(r.content)
print("Fetch the user details ")

#Update the user with PUT
r=requests.put(url + '/api/users/' + user,data=payload,headers=headers)
print(r.status_code)
print(r.content)
print("User is not updated")

#Log out with GET
r=requests.get(url+'/logout')
assert r.status_code == 200
print(r.content)
print("User logout successfully")