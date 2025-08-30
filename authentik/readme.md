Reff: https://docs.goauthentik.io/install-config/install/docker-compose/

Please note you will need to create your own .env file similar to below, please see link for more information.


COMPOSE_PORT_HTTP=80
COMPOSE_PORT_HTTPS=443
AUTHENTIK_ERROR_REPORTING__ENABLED=true
AUTHENTIK_SECRET_KEY=
PG_PASS=

# Email settings

# # SMTP Host Emails are sent to
# AUTHENTIK_EMAIL__HOST=localhost
# AUTHENTIK_EMAIL__PORT=25
# # Optionally authenticate (don't add quotation marks to your password)
# AUTHENTIK_EMAIL__USERNAME=
# AUTHENTIK_EMAIL__PASSWORD=
# # Use StartTLS
# AUTHENTIK_EMAIL__USE_TLS=false
# # Use SSL
# AUTHENTIK_EMAIL__USE_SSL=false
# AUTHENTIK_EMAIL__TIMEOUT=10
# # Email address authentik will send from, should have a correct @domain
# AUTHENTIK_EMAIL__FROM=authentik@localhost      