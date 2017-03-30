# WordPress Dependency Structure #


### Install ###
* The whole proejct should be created and write-able by your user.
* /content and .htaccess should be owned by a group shared with your user and apache/nginx.
* For Docker php5 you must install the mysqli extension at container command line: docker-php-ext-install mysqli 

```
#!bash
cd scripts
bash move-in.sh #just download core ctrl-c after the rest of this script is WIP
cp public/.htaccess.sample public/.htaccess
cp wp-config.sample.php wp-config.local.php
cp scripts/scripts-config.sample.sh scripts/scripts-config.sh

```
* Edit the wp-config.local.php and scripts-config.sh to match your database and domain settings.
* Hit yourdomain.com/wpcr/wp-admin #should redirect to the install OR login if this is an existing WP install.
* Once WP is installed:
    * Go to Settings >  General be sure WordPress Address (URL) is the path to the WP subdirectory, then save.
    * Go to Settings > Permalinks and set an option for the permalink structure, then save.