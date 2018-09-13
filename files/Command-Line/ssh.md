```bash
sudo apt install openssh-server
man sshd_config

# Copy configure file
sudo cp /etc/ssh/sshd_config /etc/ssh/sshd_config.bak
sudo chmod a-w /etc/ssh/sshd_config.bak
ll

#After each change, restart the service.
sudo systemctl restart ssh
sudo systemctl restart sshd.service
```
check [configfile](./etc/UNIX.md) for details.

To add pub key from client to server.     
Note: you may need to enable `PasswordAuthentication` in config file first to add public key.
```bash
ssh-copy-id -i ~/.ssh/id_rsa.pub user@ip -p 22
```


Helpful links:
https://help.ubuntu.com/lts/serverguide/openssh-server.html.en
https://www.digitalocean.com/community/tutorials/how-to-use-ssh-to-connect-to-a-remote-server-in-ubuntu
https://www.cyberciti.biz/tips/linux-unix-bsd-openssh-server-best-practices.html
https://www.thegeekstuff.com/2011/05/openssh-options/
https://www.freebsd.org/cgi/man.cgi?sshd_config(5)
