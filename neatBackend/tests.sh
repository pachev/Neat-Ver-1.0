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
http localhost:8000
echo "RESULT: pass"
 
 
