certbot-test:
	@chmod +x ./services/register_ssl.sh
	@sudo ./services/register_ssl.sh \
								--domains "$(DOMAINS)" \
								--email $(EMAIL) \
								--data-path ./services/certbot \
								--staging 1

certbot-prod:
	@chmod +x ./services/register_ssl.sh
	@sudo ./services/register_ssl.sh \
								--domains "$(DOMAINS)" \
								--email $(EMAIL) \
								--data-path ./services/certbot \
								--staging 0

deploy-test:
	@docker-compose \
					-f docker-compose.yml \
					up --build --force-recreate

deploy-prod:
	@docker-compose \
					-f docker-compose.yml \
					up -d --build --force-recreate