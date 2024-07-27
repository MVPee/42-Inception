#!/bin/bash

# Démarrer MariaDB
service mysql start

# Attendre que le service soit complètement lancé
sleep 10

# Exécuter les commandes SQL
mysql -e "CREATE DATABASE IF NOT EXISTS \`${SQL_DATABASE}\`;"
mysql -e "CREATE USER IF NOT EXISTS \`${SQL_USER}\`@'localhost' IDENTIFIED BY '${SQL_PASSWORD}';"
mysql -e "GRANT ALL PRIVILEGES ON \`${SQL_DATABASE}\`.* TO \`${SQL_USER}\`@'%' IDENTIFIED BY '${SQL_PASSWORD}';"
mysql -e "ALTER USER 'root'@'localhost' IDENTIFIED BY '${SQL_ROOT_PASSWORD}';"
mysql -e "FLUSH PRIVILEGES;"

# Arrêter le serveur MariaDB
mysqladmin -u root -p$SQL_ROOT_PASSWORD shutdown

# Démarrer MariaDB en mode sécurisé
exec mysqld_safe
