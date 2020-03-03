#!/bin/sh

test_request() {
	
	printf "\\n\\n testing $1 ... \\n\\n";

	gzip --force --keep request.xml;

	curl --request POST \
	  --url $1 \
	  --header 'content-type: application/xml' \
	  --header 'Accept-Encoding: gzip' \
	  --header 'Content-Encoding: gzip' \
	  --data-binary @request.xml.gz \
	  --output 'response.xml.gz' \
	  --verbose \
	  --write-out 'Establish Connection: %{time_connect}s\nTime to first byte: %{time_starttransfer}s\nTotal: %{time_total}s\n';
	  
	gunzip --force response.xml.gz;
	
	printf "\\n"
	cat response.xml;	
	printf "\\n"
	
	rm --force request.xml.gz;
	rm --force response.xml.gz;
	rm --force response.xml;		
} 

#####################################################

test_request 'http://localhost:8080/rest/api';

#####################################################
