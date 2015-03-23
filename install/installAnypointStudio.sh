# ============================================================================
# Anypoint Studio
# http://www.mulesoft.com/ty/dl/studio-linux

wget 'https://mule-studio.s3.amazonaws.com/4.1.0-OCT14/AnypointStudio-for-linux-64bit-4.1.0-201410161901.tar.gz'
tar -zxvf AnypointStudio-for-linux-64bit-4.1.0-201410161901.tar.gz
rm AnypointStudio-for-linux-64bit-4.1.0-201410161901.tar.gz
chmod u+x AnypointStudio/AnypointStudio
./AnypointStudio/AnypointStudio


# To install Mule security plugin:
# 1.	Launch Anyoint Studio
# 2.	Under the Help menu, select Install New Software...
# 3.	Mule opens the Install wizard. Click the Add... button next to the Work with field.
# 4.	In the Add Repository panel, enter a Name for the repository, such as Anypoint Enterprise Security, 
# and in the Location field, paste the following link: 
# http://security-update-site.s3.amazonaws.com/
# then click OK.
# 5.	In the table, check the box to select Premium and then click Next.
# 6.	Click Next in the next wizard pane.
# 7.	Use the radio button to accept the terms of the license agreement, then click Finish.
# 8.	Anypoint Studio installs Anypoint Enterprise Security version 1.2, then asks that you restart the application. 
# Upon relaunch, Studio displays a new palette group called Security which contains six new message processors.

#Install Mule API Gateway plugin:
# 1. Under the Help menu in Anypoint Studio, select Install New Software. 
# 2. In the Work with: field in the Install wizard, enter 
# https://studio.mulesoft.org.s3.amazonaws.com/r3/api-gateway/
# 4. Check the box next to API Gateway runtime, then click Next.
# 5. Follow the remaining steps to accept the installation. 

# Configure client ID and client secret In Anypoint Studio:
# 1. Obtain your client ID and client secret from an Organization Administrator for your Anypoint Platform for 
# APIs organization. This can be found in the link below:
# https://anypoint.mulesoft.com/accounts/#/cs/core/organization/view
# Login with the username and password you signed up to Mule's website.
# 2. Open Anypoint Studio.
# 3. Click Anypoint Studio > Preferences, and click the arrow next to Anypoint Studio to expand the node.
# 4. Click Anypoint Platform for APIs.
# 5. In the Client ID and Client Secret fields, paste the unique values for your organization. 
# Leave the Host, Port, and Path defaults as they are and click OK.  


#Install JD - java decompiler - to view *.class source
# 1. Under the Help menu in Anypoint Studio, select Install New Software. 
# 2. In the Work with: field in the Install wizard, enter 
# http://jd.benow.ca/jd-eclipse/update#sthash.DGpIlpUI.dpuf
# 4. Check the box next to "Java Decompiler Eclipse Plug-in", then click Next.
# 5. Follow the remaining steps to accept the installation. 
# 6. After restart of Anypoint Studio: go to: Windows > Preferences 
# 7. Select General > Editors > File Associations 
# 8. Select "*.class" and in "Associated Editors" make "Class File Editor" as default. 
# 9. Select "*.class without source" and in "Associated Editors" make "Class File Editor" as default. 

#Install Stormpath
# 1. Under the Help menu in Mule Studio, select Install New Software. 
# 2. In the Work with: field in the Install wizard, use the drop-down menu to select MuleStudio Cloud Connectors Update Site.
# Or use link: http://repository.mulesoft.org/connectors/releases/3.5.0
# 3. Expand 'community' node
# 4. Choose 'Stormpath Connector Mule Studio Extension'
# 5. Click 'Next' 
# 6. Click 'Next' 
# 7. Accept terms 
# 8. Finish



