set -u -e

openssl s_client \
	-connect $BOOTSTRAP_SERVERS:9092 \
	-servername $BOOTSTRAP_SERVERS \
	-verify_hostname $BOOTSTRAP_SERVERS </dev/null 2>/dev/null | \
	grep -E 'Verify return code|BEGIN CERTIFICATE'
