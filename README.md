# WordPress Dependency Structure #


### Install ###
* targetDir should be created and write-able by your user.

```
#!bash
cd scripts
bash move-in.sh #just download core ctrl-c after the rest of this script is WIP
cp public/.htaccess.sample public/.htaccess
cp wp-config.sample.php wp-config.local.php
cp scripts/scripts-config.sample.sh scripts/scripts-config.sh

```
* Edit the wp-config.local.php and scripts-config.sh to match your database and domain settings.
* Hit yourdomain.com/wpcr/wp-admin #should redirect to the install