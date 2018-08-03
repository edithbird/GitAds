#Doubleclick
library(RDoubleClick)
client.id <-  "794086906988-09f9gfq7ghfgq4ppvj2bf0rgq3dp3uvc.apps.googleusercontent.com"
client.secret <-  "26rwysQl2o09PWVXftis0Wry"
DCAuth(client.id,client.secret)
profiles <- userprofiles.list(client.id,client.secret)
profiles <- userprofiles.list()
profileId <- profiles[1,'profileId']
reports <- reports.list(profileId,results=100)
reportId <- reports[1,'id']

files <- files.list(profileId,reportId,results=100)
reportId <- files[1,'reportId']
fileId <- files[1,'id']
report <- files.get(fileId,reportId)
report <- reports.run(profileId,reportId)
str(report)















