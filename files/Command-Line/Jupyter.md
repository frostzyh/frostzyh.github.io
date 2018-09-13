[Guide](https://jupyter-notebook.readthedocs.io/en/stable/public_server.html)
https://www.digitalocean.com/community/tutorials/how-to-set-up-a-jupyter-notebook-to-run-ipython-on-ubuntu-16-04
```bash
#check jupyter_notebook_config.py in /home/user/,jupyter. If not, then
jupyter notebook --generate-config

#Setup password
jupyter notebook password


#Connect from client
#8000 is Listening(client) port. localhost is the host and 8888 is hostport(server) port. 
ssh -L 8000:localhost:8888 username@ip
# After successfully connected,
jupyter notebook
# then, in local browser, open http://localhost:8000

```
