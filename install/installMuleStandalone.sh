# Mule standalone
# https://code.google.com/p/soi-toolkit/wiki/IG_RT_MuleESB


wget 'http://dist.codehaus.org/mule/distributions/mule-standalone-3.3.0.tar.gz'
sudo tar -xvf mule-standalone-3.3.0.tar.gz -C /usr/local
rm mule-standalone-3.3.0.tar.gz
sudo ln -s /usr/local/mule-standalone-3.3.0/bin/mule /etc/init.d/mule_ce_3.3.0
sudo update-rc.d mule_ce_3.3.0 start 67 2 3 4 5 . stop 67 0 1 6 .
sudo service mule_ce_3.3.0 start

#Useful commands
#
# sudo reboot

# to view log
# tail /usr/local/mule-standalone-3.3.0/logs/mule.log -n50


#To verify if Mule is running use the command:
#$ sudo service mule_ce_3.3.0 status

#To restart Mule use the command:
#$ sudo service mule_ce_3.3.0 restart

#To stop Mule use the command:
#$ sudo service mule_ce_3.3.0 stop

#To uninstall the Mule service, do the following:
#$ sudo update-rc.d -f mule_ce_3.3.0 remove
#$ sudo rm /etc/init.d/mule_ce_3.3.0


