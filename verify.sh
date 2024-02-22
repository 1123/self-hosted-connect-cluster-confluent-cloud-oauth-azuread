export BOOTSTRAP=lkc-j9w0gm.domjg5r47p2.germanywestcentral.azure.confluent.cloud
openssl s_client \
	-connect $BOOTSTRAP:9092 \
	-servername $BOOTSTRAP \
	-verify_hostname $BOOTSTRAP </dev/null 2>/dev/null | \
	grep -E 'Verify return code|BEGIN CERTIFICATE'
