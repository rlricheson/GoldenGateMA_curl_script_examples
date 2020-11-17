curl -u admin:gguser -k \
 -H "Content-Type: application/json" \
 -H "Accept: application/json" \
 -X POST \
 https://myhost.us.colorado.com:9002/services/v2/replicats/MYREP \
 -d '{
    "description":"Integrated Replicat",
    "config":[
    "Replicat myrep",
    "UserIdAlias oggadmin_pdb2 domain MyDomain",
    "DBOptions IntegratedParams (parallelism 6)",
    "MapInvisibleColumns",
    "Map pdb1.source.west.*, target pdb2.target.*;"
    ],
    "source":{
    "name":"rt"
    },
   "mode":{
   "type":"integrated"
   },
   "credentials":{
   "alias":"mypdb2"
   },
  "status":"running"
  }'|python -mjson.tool