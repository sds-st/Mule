Enter file contents here# ================================================================
# Download Mule ESB Runtime 
#(MMC + Mule Enterprise Edition )
# server 
# http://www.mulesoft.com/ty/dl/management-linux

wget 'http://s3.amazonaws.com/MuleEE/mmc-distribution-mule-console-bundle-3.6.1.tar.gz'
tar -zxvf mmc-distribution-mule-console-bundle-3.6.1.tar.gz
cd mmc-distribution-mule-console-bundle-3.6.1

./mule-enterprise-3.6.1/bin/mule -installLicense ~/mulesoft/mule-ee-license.lic 
#./mule -verifyLicense
#./mule -unInstallLicense

#Valid license key --> Evaluation = false, Expiration Date = Wed Dec 31 00:00:00 UTC 2014, Contact Name = Peter Mason, Contact Email #Address = petmason@cisco.com, Contact Telephone = (858) 526-1285, Contact Company = Cisco Systems Inc., Contact Country = US, #Entitlements = clustering,datamapper,api-gateway

./startup.sh 

#Mule running as PID=#####
#Tomcat and MMC running as PID=#####
#Finished starting Mule and MMC. 
 

# open firefox: http://localhost:8585/mmc-3.6.1-HF1/

# $MULE_HOME = /home/ubuntu/mulesoft/installESB/mmc-distribution-mule-console-bundle-3.6.1/mule-enterprise-3.6.1
