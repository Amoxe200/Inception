service mysql start

sleep 10

mysql_secure_installation <<EOF
y
secret
secret
y
n
n
y
EOF


