require 'rest_client'
require 'json'

#Build request URL
#Replace AAA-BBB-CCC with your Marketo instance
marketo_instance = "https://AAA-BBB-CCC.mktorest.com"
#Specify winning lead id
leadId = 2234
endpoint = "/rest/v1/leads/" + leadId + "/merge.json"
#Replace with your access token
auth_token =  "?access_token=" + "ac756f7a-d54d-41ac-8c3c-f2d2a39ee325:ab"
#Specify losing lead id
losing_lead = "&leadId=" + "1234"
request_url = marketo_instance + endpoint + auth_token + losing_lead

#Make request
response = RestClient.post request_url

#Returns Marketo API response
puts response