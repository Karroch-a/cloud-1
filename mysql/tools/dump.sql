CREATE DATABASE karroch;
CREATE USER 'aazeroua'@'%' identified by 'karroch';
GRANT ALL PRIVILEGES ON karroch.* TO 'aazeroua'@'%';
FLUSH PRIVILEGES;