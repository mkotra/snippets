# cd to bin directory of jdk 

cd C:\dev\java\jdk-20\bin

./keytool -importcert -file "C:\dev\code\certificate.cer" -keystore "C:\dev\java\jdk-20\lib\security\cacerts" -alias certificatealias

# type 'yes' to trust certificate. If it prompts for password the default one is 'changeit'



keytool -import -alias CertGlobalRoot -trustcacerts -file "C:\dev\code\Cert Global Root CA.cer" -cacerts -storepass changeit
keytool -import -alias CertSecureServerCA -trustcacerts -file "C:\dev\code\Cert Secure Server CA.cer" -cacerts -storepass changeit

###  

keytool -delete -cacerts -alias "aliasToRemove" -storepass changeit

keytool -v -list -cacerts -storepass changeit


#in case of issues run java with -Djavax.net.debug=ssl,handshake
