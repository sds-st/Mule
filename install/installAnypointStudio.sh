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
# 4.	In the Add Repository panel, enter a Name for the repository, such as Anypoint Enterprise Security, and in the Location field, paste the following link: 
# http://security-update-site.s3.amazonaws.com/
# then click OK.
# 5.	In the table, check the box to select Premium and then click Next.
# 6.	Click Next in the next wizard pane.
# 7.	Use the radio button to accept the terms of the license agreement, then click Finish.
# 8.	Anypoint Studio installs Anypoint Enterprise Security version 1.2, then asks that you restart the application. Upon relaunch, Studio displays a new palette group called Security which contains six new message processors.

