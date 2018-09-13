
Download Database files
```bash
# Download Database files
cd repo/mimic-code/buildmimic/postgres
make mimic-download physionetuser=yehui.zh@gmail.com datadir="/media/frostzyh/ocz/mimic-data/"

# unzip files
cd /media/frostzyh/ocz/mimic-data/
gunzip *.gz

# Change previledges
cd /etc/postgresql/10/main/
sudo vim pg_hba.conf
# change postgres user authtication to md5. "local all postgres md5"

#optional: change postgres password
sudo -u postgres psql postgres
\password postgres
#enterpassword
\q

# add to dbs
make create-user mimic datadir="/media/frostzyh/ocz/mimic-data/"

```
