CREATE DATABASE wordpress;
CREATE USER 'mgeneviv'@'%' IDENTIFIED BY 'password';
GRANT ALL PRIVILEGES ON wordpress.* TO 'mgeneviv'@'%';
FLUSH PRIVILEGES;
