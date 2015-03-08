#================================================================ 
# Download Mule API Gateway Server  

wget 'https://s3.amazonaws.com/static-anypoint-mulesoft-com/api-gateway-distribution-standalone-1.3.1.zip'
unzip api-gateway-distribution-standalone-1.3.1.zip

# Configure client ID and client secret in conf/wrapper.conf:
# 1.
cd api-gateway-standalone-1.3.1/conf
vi wrapper.conf

# 2. Uncomment the following parameters:
#wrapper.java.additional.<n>=-Danypoint.platform.client_id={client ID}
#wrapper.java.additional.<n>=-Danypoint.platform.client_secret={client secret}

# 3. Replace '<n>' in the parameters with the next serial numbers (probably 4 and 5). e.g.:
#wrapper.java.additional.4=-Danypoint.platform.client_id={client ID}
#wrapper.java.additional.5=-Danypoint.platform.client_secret={client secret}

# 4. Update 'client ID' and 'client secret':
# Obtain your client ID and client secret from an Organization Administrator for your Anypoint Platform for  
# APIs organization. This can be found in the link below: 
# https://anypoint.mulesoft.com/accounts/#/cs/core/organization/view 
# You will be required to login with the username and password you signed up to Mule's website. 


 

