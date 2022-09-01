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

mysql -u root -e "CREATE USER 'mariadb_user'@'localhost' IDENTIFIED BY 'secret';";
mysql -u root -e "CREATE USER 'mariadb_user'@'%' IDENTIFIED BY 'secret';";

mysql -u root -e "GRANT ALL ON . TO 'mariadb_user'@'localhost';"
mysql -u root -e "GRANT ALL ON . TO 'mariadb_user'@'%';"
mysql -u root -e "FLUSH PRIVILEGES;"
mysql -u root -e "CREATE DATABASE wordpress;"
