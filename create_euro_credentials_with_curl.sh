curl -u admin:gguser -k \
 -H "Content-Type: application/json" \
 -H "Accept: application/json" \
 -X POST \
 https://edvmr1p0.us.oracle.com:9002/services/v2/credentials/OracleGoldenGate/mypdb2 \
 -d '{
  "userid":"C##GGUSER@pdb2",
  "password":"Welcome_1"
 }'|python -mjson.tool
