# get and install wazuh
curl -so wazuh-agent-4.2.5.deb https://packages.wazuh.com/4.x/apt/pool/main/w/wazuh-agent/wazuh-agent_4.2.5-1_amd64.deb
# WAZUH_MANAGER, WAZUH_REGISTRATION_PASSWORD, WAZUH_AGENT_GROUP must be set by k8s
dpkg -i ./wazuh-agent-4.2.5.deb
# move the conf 
mv -f ossec.conf /var/ossec/etc/ossec.conf
# start the agent
service wazuh-agent start
# run falco
/usr/bin/falco