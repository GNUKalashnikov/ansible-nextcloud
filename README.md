# Ansible + Docker
A Repo that will have a way to deploy a generic nextcloud instance


## Commands

*To test the ansible on a docker instance*
`docker run -i -t ubuntu /bin/bash`

*Updating the docker file within docker compose*
docker-compose up -d --pull

## Checklist

When Running the dockerfile we need to make sure it's resources are linked to a permenant database and it writes to a permenant location externally of it's own container.
This also means dependencies have to be added and downloaded via ansible; which are:

- [] mysql (As the database of choice)
    - Would be nice to have it pre established before this script in a manner of best practice such as an automated creation of a user and password
        - Would also regardless create nextcloud user and password (Can also be created manually via the ui)
- [] Create in ansible a location/folder where the data will be used
    - Defining `-v nextcloud:/var/www/html`
- 