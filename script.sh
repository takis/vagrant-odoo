#!/usr/bin/env bash
echo "Adding Odoo 8.0 repo"
echo 'deb http://nightly.openerp.com/8.0/nightly/deb/ ./' > /etc/apt/sources.list.d/odoo.list
echo "Updating APT cache"
apt-get update -y -qq
echo "Installing PostgreSQL"
apt-get install postgresql -y
echo "Starting PostgreSQL"
service postgresql start
echo "Creating default PostgreSQL database"
su postgres -s /bin/bash -c "createdb mycompany"
echo "Installing Odoo"
apt-get install odoo -f -y --force-yes
