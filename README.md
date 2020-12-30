# getto-labo-container-theia

theia ide image for getto labo

status: production ready

###### Table of Contents

- [Requirements](#Requirements)
- [Usage](#Usage)
- [License](#License)

## Requirements

- docker


## Usage

```bash
docker run -d \
  -v /docker-volumes/apps:/apps \
  -v /docker-volumes/home:/home \
  -p $CONTAINER_PORT:8080 \
  $(cat .getto-hangar-image)
```

## License

[MIT](LICENSE) license.

Copyright &copy; shun-fix9
