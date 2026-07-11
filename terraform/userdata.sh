#!/bin/bash
apt-get update -y
apt-get install nginx -y

systemctl enable nginx
systemctl start nginx

cat <<EOF > /var/www/html/index.html
<!DOCTYPE html>
<html>
<head>
<title>Dennis Owoju Cloud Portfolio</title>
</head>
<body style="font-family:Arial;text-align:center;margin-top:80px;">
<h1>Terraform Web Server Deployment</h1>

<p>This web server was automatically deployed using Terraform.</p>

<p>Project 6 - AWS Cloud Portfolio</p>

<p><strong>Dennis Owoju</strong></p>

</body>
</html>
EOF