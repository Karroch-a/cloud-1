CREATE DATABASE karroch;
CREATE USER 'aazeroua'@'%' identified WITH mysql_native_password by 'karroch';
GRANT ALL PRIVILEGES ON karroch.* TO 'aazeroua'@'%';
FLUSH PRIVILEGES;