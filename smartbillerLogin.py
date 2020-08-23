import requests

url = "https://kraken-admin.sumpahpalapa.com/login"
json = {
    "username" : "smartbiller",
    "password" : "smart987654"
}

kraken_token = requests.post(url, json=json).json()["token"]

url = "https://smartbiller-staging.sumpahpalapa.com/login"
json = {
    "kraken_token" : kraken_token
}

token = requests.post(url, json=json).json()["token"]
print(token)