#!/usr/bin/env bash
echo 'deb http://nightly.openerp.com/8.0/nightly/deb/ ./' > /etc/apt/sources.list.d/odoo.list
apt-get update -y -qq
apt-get install postgresql -y
service postgresql start
su postgres -s /bin/bash -c "createdb mycompany"
apt-get install odoo -f -y --force-yes
