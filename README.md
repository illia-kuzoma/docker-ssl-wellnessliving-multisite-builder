# WP/React Multisite Builder

## Precondition
- `cp env-example .env`
- `mkdir dbfile project`
- `cd project && mkdir react4multisite wp-multisite`

### Git WordPress
- `git clone git@github.com:wellnessliving/wp-multisite.git ./project/wp-multisite`
- `git checkout development`
- `cp services/wordpress/config/wp-config.php project/wp-multisite`
- `cp services/wordpress/config/htaccess-example project/wp-multisite.htaccess`
- `cp services/wordpress/config/.htaccess ./project/wp-multisite`

### Git React
- `git clone git@github.com:wellnessliving/react4multisite.git ./project/react4multisite`
- `git checkout development`
- `cp /services/wordpress/config/build_local.sh project/react4multisite/dev_build`
- `cd react4multisite/dev_build`
- `bash build_local.sh`

## Run Docker
- `docker-compose up -d`
## Stop Docker
- `docker-compose down`

## PhpMyAdmin
#### Server: db
#### Username: react
#### Server: react4multisite
- [http://localhost:8081/](http://localhost:8081/)