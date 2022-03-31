# Connect to Bastion EC2 Instance from local desktop
ssh -i private-key/terraform-key.pem ec2-user@<PUBLIC_IP_FOR_BASTION_HOST>

# Curl Test for Bastion EC2 Instance to Private EC2 Instances
curl  http://<Private-Instance-1-Private-IP>
curl  http://<Private-Instance-2-Private-IP>

# Connect to Private EC2 Instances from Bastion EC2 Instance
ssh -i /tmp/terraform-key.pem ec2-user@<Private-Instance-1-Private-IP>
cd /var/www/html
ls -lrta
Observation: 
1) Should find index.html
2) Should find app1 folder
3) Should find app1/index.html file
4) Should find app1/metadata.html file
5) If required verify same for second instance too.
6) # Additionalyy To verify userdata passed to Instance
curl http://169.254.169.254/latest/user-data 

