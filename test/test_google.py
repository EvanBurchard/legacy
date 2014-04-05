#### neeed to make sure google still work for sure
# this may have to run on non-python devs' boxes, try/catch an install of the requests lib to be SURE

try:
    import requests
except:
    import os
    os.sys('easy_install pip')
    os.sys('pip install requests')
    import requests

#r = requests.get('http://www.google.com/')
r = requests.get('http://google.com')

if r.status_code = 200:
    print "yep, it still there"
