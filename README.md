# WordPress Base #


### Install ###
* Depends on Environment variables to set wp-config (see wp-config.php)
* Use the scripts/wp-salt-gen.sh script to generate the secrets/salts.php file.
* Requires you to install the core files in a subdirectory of public/ (with wpcli or manually)
* WP Admin:
    * Go to Settings > General be sure WordPress Address (URL) is the path to the WP subdirectory, then save.
    * Go to Settings > Permalinks and set an option for the permalink structure, then save.
