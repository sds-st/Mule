# Mule standalone
# https://code.google.com/p/soi-toolkit/wiki/IG_RT_MuleESB

#muleVersion="3.4.0"
#muleVersion="3.3.0"
muleVersion="3.6.1"

wget 'https://repository-master.mulesoft.org/nexus/content/repositories/releases/org/mule/distributions/mule-standalone/'${muleVersion}'/mule-standalone-'${muleVersion}'.tar.gz'
#wget 'http://dist.codehaus.org/mule/distributions/mule-standalone-'${muleVersion}'.tar.gz'
sudo tar -xvf mule-standalone-${muleVersion}.tar.gz -C /usr/local
rm mule-standalone-${muleVersion}.tar.gz

#create service
sudo ln -s /usr/local/mule-standalone-${muleVersion}/bin/mule /etc/init.d/mule_s
sudo update-rc.d mule_s start 67 2 3 4 5 . stop 67 0 1 6 .
sudo service mule_s start

#Useful commands
#
# sudo reboot

# to view log
# tail /usr/local/mule-standalone-${muleVersion}/logs/mule.log -n50


#To verify if Mule is running use the command:
#$ sudo service mule_s status

#To restart Mule use the command:
#$ sudo service mule_s restart

#To stop Mule use the command:
#$ sudo service mule_s stop

#To uninstall the Mule service, do the following:
#$ sudo update-rc.d -f mule_s remove
#$ sudo rm /etc/init.d/mule_s



