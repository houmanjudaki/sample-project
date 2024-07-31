#!/bin/bash

# Renew SSL certificates
sudo certbot renew --quiet

# Reload Nginx to apply new certificates
sudo docker-compose exec nginx nginx -s reload
