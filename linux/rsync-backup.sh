#!/bin/bash

# Full Backup - do not use for incremental changes. 
rsync -avhW --no-compress --progress --stats /var/www/html/ /media/backup/servernamehere/var/www/html/

# Incremental Change. NOTE: will delete in destination if not in source. 
# rsync -avh --no-compress --progress --stats /var/www/html/ /media/backup/servernamehere/var/www/html/ --delete
