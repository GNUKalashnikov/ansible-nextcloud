# Ansible + Docker
A Repo that will have a way to deploy a generic nextcloud instance


## Commands

*To test the ansible on a docker instance*
`docker run -i -t ubuntu /bin/bash`

*Updating the docker file within docker compose*
docker-compose up -d --pull

## Checklist

When Running the dockerfile we need to make sure it's resources are linked to a permanent database and it writes to a permanent location externally of it's own container.
This also means dependencies have to be added and downloaded via ansible; which are:

- [ ] mysql (As the database of choice)
    - Would be nice to have it pre established before this script in a manner of best practice such as an automated creation of a user and password
        - Would also regardless create nextcloud user and password (Can also be created manually via the ui)
- [x] Create in ansible a location/folder where the data will be used
    - Defining `-v nextcloud:/var/www/html`

## Current Whereabout
`docker run -itd -p 8080:80 -v $(pwd)/nextcloud:/var/www/html nextcloud`

- Local Connections
  - `host.docker.internal:172.17.0.1`

```bash
systemctl stop mariadb
rm -R /var/lib/mysql/*
mysql_install_db --user=mysql --basedir=/usr --datadir=/var/lib/mysql
systemctl start mariadb
```

## Troubleshooting

Found that when deploying to an external mounted drive (*anything other than / drive*) it will cause a permission error.
- `chown -R www-data:www-data designated-mounted-folder`
- `chmod -R 0750 designated-mounted-folder`

## Current Problems
- Need to deploy twice from a clean install as it takes time as the nextcloud container hangs on the "trying to reinstall"
Possible soloutions include:
- Leave it and just dealing with ssh'ing into the host machine and pulling down the container and redeploying.
- Creating a pause for either of the containers

The cron is unable does not activate.
- troubleshoot the local imagine till it works and push the changes here.

