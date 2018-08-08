### basic usage

```bash
sudo -i -u postgres
sudo -u postgres psql

createuser --interactive
sudo -u postgres createuser --interactive
man createuser

```



### Installation

**Prerequisites**
- [x] Ubuntu 18.04 Bionic
- [x] PostgreSQL 10

```bash
# import repo key 
sudo apt-get install wget ca-certificates
wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -
# Add Repo
sudo sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt/ $(lsb_release -cs)-pgdg main" > /etc/apt/sources.list.d/pgdg.list'
# Install
sudo apt update
sudo apt upgrade
sudo apt install postgresql postgresql-contrib pgadmin4
```


### Move Data Directory

Reference
> [How To Move a PostgreSQL Data Directory to a New Location on Ubuntu 16.04](https://www.digitalocean.com/community/tutorials/how-to-move-a-postgresql-data-directory-to-a-new-location-on-ubuntu-16-04)

```bash
#show data directory
sudo -u postgres psql
SHOW data_directory;
#        data_directory        
# -----------------------------
#  /var/lib/postgresql/10/main
# (1 row)

#Stop service
sudo systemctl stop postgresql
sudo systemctl status postgresql

#Move
sudo rsync -av /var/lib/postgresql /home/frostzyh

#Rename current(archive)
sudo mv /var/lib/postgresql/10/main /var/lib/postgresql/10/main.bak

# update postgresql.conf
sudo vim /etc/postgresql/10/main/postgresql.conf
# data_directory = '/home/frostzyh/postgresql/10/main'

# Restart service and double check
sudo systemctl start postgresql
sudo systemctl status postgresql
sudo -u postgres psql
SHOW data_directory;
# data_directory           
# -----------------------------------
# /home/frostzyh/postgresql/10/main
# (1 row)

# remove old directory
sudo rm -rf /var/lib/postgresql/10/main.bak

#final check
sudo systemctl restart postgresql
sudo systemctl status postgresql
```

### Authentication
```
sudo vim /etc/postgresql/10/main/pg_hba.conf 
```
replace all 
```
local    all    postgres    peer
``` 
to 
```
local    all    postgres    md5
```
then 
```bash
sudo service postgresql restart
```

### Set password
```
sudo -u postgres psql postgres

\password postgres
```
