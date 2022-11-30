import requests
import sys
url = "https://apistocks.p.rapidapi.com/daily"
x=sys.argv[1]
d1=sys.argv[2]
d2=sys.argv[3]
querystring = {"symbol":x,"dateStart":d1,"dateEnd":d2}

headers = {
	"X-RapidAPI-Key": "fc940de99emsh7a128e5e13187c0p12a1ccjsn8e93b1ce0d1e",
	"X-RapidAPI-Host": "apistocks.p.rapidapi.com"
}

response = requests.request("GET", url, headers=headers, params=querystring)

print(response.text)
