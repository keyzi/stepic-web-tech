sudo ln -sf /home/box/web/etc/nginx.conf  /etc/nginx/sites-enabled/default
# restart nginx
sudo /etc/init.d/nginx restart

# creare symbolic links to gunicorn configs
sudo -s ln -sf /home/box/web/etc/hello.py  /etc/gunicorn.d/hello.py
sudo -s ln -sf /home/box/web/etc/django-gunicorn.conf  /etc/gunicorn.d/django-gunicorn.conf