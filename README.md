### Running a Self-Managed Connect Cluster for Confluent Cloud with Azure AD OAuth

This repository includes a sample setup for authenticating a self managed connect cluster 
against Confluent Cloud with OAuth and Azure Active Directory. 

How to run this demo:

* Set up a Confluent Cloud Organization, Environment and Cluster
* Configure your Azure AD Tenant as OAuth Identity Provider
* Create an Azure Ad application Credential (Client-id, Client-secret)
* Configure an Identity Pool via the Confluent Cloud UI
* Install a Connect Cluster (can be a single worker machine) e.g. via the Ubuntu packages or some other installation mechanism (Confluent for Kubernetes, CP-Ansible). 
* Fill in the Variables in the `connect-distributed-ccloud.properties.template` and copy it to `connect-distributed.properties`. 
* Use the `confluent-hub` cli to install the DataGenSourceConnector: `confluent-hub install confluentinc/kafka-connect-datagen:0.6.3`
* Start your Connect Cluster
* Use the scripts `post-connector.sh`, `delete-connector.sh`, `list-connectors.sh` to manage your connectors. 
