FROM jc21/nginx-proxy-manager:latest

# Install curl and cron
RUN apt-get update && \
    apt-get install -y curl cron && \
    apt-get clean

# Add the script via curl and set up cron
RUN mkdir -p /opt/scripts && \
    curl -sSL https://raw.githubusercontent.com/simon-r1ley/WorkbenchLab/main/nginx/duckdns_update.sh -o /opt/scripts/duckdns_update.sh && \
    chmod +x /opt/scripts/duckdns_update.sh

# Add the cron job
RUN echo "*/30 * * * * /opt/scripts/duckdns_update.sh >> /var/log/duckdns.log 2>&1" > /etc/cron.d/duckdns && \
    chmod 0644 /etc/cron.d/duckdns && \
    crontab /etc/cron.d/duckdns

# Start cron + the original supervisor (both must run)
CMD cron && /init
