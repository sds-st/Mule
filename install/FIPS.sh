# 1. First step is to install Java 7 JCE
wget --no-check-certificate --no-cookies --header "Cookie: oraclelicense=accept-securebackup-cookie" 'http://download.oracle.com/otn-pub/java/jce/7/UnlimitedJCEPolicyJDK7.zip'
mv ./UnlimitedJCEPolicyJDK7.zip@* UnlimitedJCEPolicyJDK7.zip
unzip ./UnlimitedJCEPolicyJDK7.zip
rm UnlimitedJCEPolicyJDK7.zip

# Please replace $JAVA_HOME with your JAVA_HOME, or define this parameter correctly.
cp ./UnlimitedJCEPolicy/*.jar $JAVA_HOME/jre/lib/security

# 2. Now define Java to be FIPS 140-2 compliant
# Find the FIPS jars (from WebLogic Server) - cryptoj.jar, jcmFIPS.jar, sslj.jar. We didn't upload the files to Github due to licensing issues.
# 		Copy the jar files to $JAVA_HOME/jre/lib/ext
# Edit $JAVA_HOME/jre/lib/security/java.security with the correct providers - 
#		Uncomment the existing providers and put:
#			security.provider.1=com.rsa.jsafe.provider.JsafeJCE
#			security.provider.2=com.rsa.jsse.JsseProvider

# 3. Define MuleSoft standalone to work in FIPS 140-2 mode
# 	Go to the location of the standalone
#	Edit conf/wrapper.conf - uncomment this line:
#		wrapper.java.additional.<n>=-Dmule.security.model=fips140-2
#	Replace <n> with the consequent number. 

# 4. When running the project from Anypoint Studio:
#	In menu select: 
#		Run -> Run configurations -> select project -> select tab: “Arguments” -> in "VM arguments" add line:
#			-Dmule.security.model=fips140-2




