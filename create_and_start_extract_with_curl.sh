curl -u admin:gguser -k \
 -H "Content-Type: application/json" \
 -H "Accept: application/json" \
 -X POST \
 https://myhost.us.colorado.com:9002/services/v2/extracts/MYEXT \
 -d '{
    "description":"Integrated Extract",
    "config":[
        "-- Parameter file for primary extract",
        "Extract myext",
        "UseridAlias myroot",
        "ExtTrail lt",
        "ddl include all",
        "TranLogOptions IntegratedParams (max_sga_size 256)",
        "LogAllSupCols",
        "UpdateRecordFormat Compact",
        "ReportCount Every 5 Minutes, Rate",
        "Table pdb1.source.*;"
    ],
    "source":{
    "tranlogs":"integrated"
    },
   "credentials":{
   "alias":"myroot"
   },
   "registration":{
   "containers":["pdb1"],
   "optimized":false
  },
   "begin":"now",
   "targets":[
  {
      "name":"lt",
      "sizeMB":250
  }
 ],
 "status":"running"
}'|python -mjson.tool