curl -u admin:gguser -k \
 -H "Content-Type: application/json" \
 -H "Accept: application/json" \
 -X POST \
 https://myhost.colorado.com:9002/services/v2/credentials/OracleGoldenGate/myroot \
 -d '{
  "userid":"C##GGUSER",
  "password":"Welcome_1"
 }'|python -mjson.tool
