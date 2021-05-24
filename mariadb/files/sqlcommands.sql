CREATE USER 'wiki'@'localhost' IDENTIFIED BY 'THISpasswordSHOULDbeCHANGED';
CREATE DATABASE database_name;
CREATE DATABASE wikidatabase;  
GRANT ALL PRIVILEGES ON wikidatabase.* TO 'wiki'@'localhost';
FLUSH PRIVILEGES;
SHOW DATABASES;
SHOW GRANTS FOR 'wiki'@'localhost';
