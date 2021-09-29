# bash shell script to extract IP addresses
#!/bin/bash
curl https://ip-ranges.amazonaws.com/ip-ranges.json > /var/www/aws/aws-ip.json
jq -r '.prefixes[] | select(.service=="AMAZON") | .ip_prefix' < /var/www/aws/aws-ip.json > /var/www/aws/AMAZON.txt
jq -r '.prefixes[] | select(.service=="AMAZON_APPFLOW") | .ip_prefix' < /var/www/aws/aws-ip.json > /var/www/aws/AMAZON_APPFLOW.txt
jq -r '.prefixes[] | select(.service=="AMAZON_CONNECT") | .ip_prefix' < /var/www/aws/aws-ip.json > /var/www/aws/AMAZON_CONNECT.txt
jq -r '.prefixes[] | select(.service=="API_GATEWAY") | .ip_prefix' < /var/www/aws/aws-ip.json > /var/www/aws/API_GATEWAY.txt
jq -r '.prefixes[] | select(.service=="CHIME_VOICECONNECTOR") | .ip_prefix' < /var/www/aws/aws-ip.json > /var/www/aws/CHIME_VOICECONNECTOR.txt
jq -r '.prefixes[] | select(.service=="CLOUD9") | .ip_prefix' < /var/www/aws/aws-ip.json > /var/www/aws/CLOUD9.txt
jq -r '.prefixes[] | select(.service=="CLOUDFRONT") | .ip_prefix' < /var/www/aws/aws-ip.json > /var/www/aws/CLOUDFRONT.txt
jq -r '.prefixes[] | select(.service=="CODEBUILD") | .ip_prefix' < /var/www/aws/aws-ip.json > /var/www/aws/CODEBUILD.txt
jq -r '.prefixes[] | select(.service=="DYNAMODB") | .ip_prefix' < /var/www/aws/aws-ip.json > /var/www/aws/DYNAMODB.txt
jq -r '.prefixes[] | select(.service=="EBS") | .ip_prefix' < /var/www/aws/aws-ip.json > /var/www/aws/EBS.txt
jq -r '.prefixes[] | select(.service=="EC2") | .ip_prefix' < /var/www/aws/aws-ip.json > /var/www/aws/EC2.txt
jq -r '.prefixes[] | select(.service=="EC2_INSTANCE_CONNECT") | .ip_prefix' < /var/www/aws/aws-ip.json > /var/www/aws/EC2_INSTANCE_CONNECT.txt
jq -r '.prefixes[] | select(.service=="GLOBALACCELERATOR") | .ip_prefix' < /var/www/aws/aws-ip.json > /var/www/aws/GLOBALACCELERATOR.txt
jq -r '.prefixes[] | select(.service=="KINESIS_VIDEO_STREAMS") | .ip_prefix' < /var/www/aws/aws-ip.json > /var/www/aws/KINESIS_VIDEO_STREAMS.txt
jq -r '.prefixes[] | select(.service=="ROUTE53") | .ip_prefix' < /var/www/aws/aws-ip.json > /var/www/aws/ROUTE53.txt
jq -r '.prefixes[] | select(.service=="ROUTE53_HEALTHCHECKS") | .ip_prefix' < /var/www/aws/aws-ip.json > /var/www/aws/ROUTE53_HEALTHCHECKS.txt
jq -r '.prefixes[] | select(.service=="ROUTE53_HEALTHCHECKS_PUBLISHING") | .ip_prefix' < /var/www/aws/aws-ip.json > /var/www/aws/ROUTE53_HEALTHCHECKS_PUBLISHING.txt
jq -r '.prefixes[] | select(.service=="ROUTE53_RESOLVER") | .ip_prefix' < /var/www/aws/aws-ip.json > /var/www/aws/ROUTE53_RESOLVER.txt
jq -r '.prefixes[] | select(.service=="S3") | .ip_prefix' < /var/www/aws/aws-ip.json > /var/www/aws/S3.txt
jq -r '.prefixes[] | select(.service=="WORKSPACES_GATEWAYS") | .ip_prefix' < /var/www/aws/aws-ip.json > /var/www/aws/WORKSPACES_GATEWAYS.txt
