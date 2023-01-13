# cd to bin directory of jdk 

./keytool -importcert -file "C:\dev\code\certificate.cer" -keystore "C:\dev\java\jdk-20\lib\security\cacerts" -alias certificatealias

# type 'yes' to trust certificate. If it prompts for password the default one is 'changeit'
