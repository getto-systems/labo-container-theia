DOCKER_WRAPPER_IMAGE_theia(){ cat $APP_ROOT/.getto-hangar-image; }

DOCKER_WRAPPER_IDE(){
  theia-server $1 yarn start $APP_ROOT --hostname 0.0.0.0 --port 8080 --ssl --cert $TLS_CERT --certkey $TLS_KEY
}

DOCKER_WRAPPER_SERVER_OPTS_theia(){ echo "-p 10099:8080"; }
