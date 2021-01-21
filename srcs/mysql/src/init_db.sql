CREATE DATABASE wordpress;
CREATE USER 'gdrive'@'%' IDENTIFIED BY 'password';
GRANT ALL PRIVILEGES ON wordpress.* TO 'gdrive'@'%';
FLUSH PRIVILEGES;
