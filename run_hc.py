#!/usr/bin/python
import requests

url = "http://localhost:8443"
context = ["/", "/cats", "/home", "/about", "/about/contacts"]

def hc(context):
   try:
      res = requests.head(str(url)+str(context))
      #res = requests.get(str(url)+str(context))
      #print (res.status_code)
      if "200" in str(res.status_code):
         return "Pass"
      else:
         return "Fail"
   except requests.exceptions.ConnectionError:
      return "Connection Refused"

for i in range(len(context)):
   status = hc(context[i])
   print ("HealthCheck status for http://localhost:8443" + str(context[i]) + " --> " + str(status))
