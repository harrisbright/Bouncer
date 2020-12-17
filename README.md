

<!-- REQUIREMENTS -->
## Requirements

- Docker 18.06.0+
- Docker Compose 1.27.4

https://docs.docker.com/engine/install/

<!-- USAGE -->
## Usage
Check configuration of `Certbot`, start the process of obtaining SSL certificate in test mode:
```console
make certbot-test DOMAINS="site.com www.site.com" EMAIL=mail@site.com
```

If you see `Congratulations!`, all okay; start the process of obtaining SSL in production mode:

```console
make certbot-prod DOMAINS="site.com www.site.com" EMAIL=mail@site.com
```

And now, check Nginx config:

```console
make deploy-test
```

Production:

```console
make deploy-prod
```

<!-- LICENSE -->
## License

Distributed under the GPL-3.0 License . See `LICENSE` for more information.

