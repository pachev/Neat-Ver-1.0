echo --- Integration Tests ---
 
### VARIABLES ###
hostname="localhost"
application="Test API Client $(date +%s)" # randomized
secret="$(date +%s | sha256sum | base64 | head -c 15)" # randomized
 
echo hostname: ${hostname}
echo application: ${application}
echo secret: ${secret}
 
 
### TESTS ###
echo "TEST: GET request should return 'true' in the response body"
url="http://${hostname}/restapi/users"
echo ${url}
curl -X GET -H 'Accept: application/json; charset=UTF-8' \
--url "${url}" \
| grep true > /dev/null
[ "$?" -ne 0 ] && echo "RESULT: fail" && exit 1
echo "RESULT: pass"
 
 
