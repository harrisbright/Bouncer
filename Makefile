certbot-prod:
	@chmod +x ./init-letsencrypt.sh
	@sudo ./init-letsencrypt.sh

deploy-prod:
	@docker-compose \
					-f docker-compose.prod.yml \
					up -d --build --force-recreate

deploy-test:
	@docker-compose \
					-f docker-compose.prod.yml \
					up --build --force-recreate