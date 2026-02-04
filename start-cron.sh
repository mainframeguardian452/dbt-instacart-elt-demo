#!/bin/bash
set -e
# Create cron job
echo "0 6 * * * cd /usr/app/dbt && /usr/local/bin/dbt run >> /var/log/dbt/run.log 2>&1" | crontab -
echo "30 6 * * * cd /usr/app/dbt && /usr/local/bin/dbt docs generate >> /var/log/dbt/docs.log 2>&1" | crontab -
echo "0 7 * * * cd /usr/app/dbt && /usr/local/bin/dbt test >> /var/log/dbt/test.log 2>&1" | crontab -
# Start cron daemon
cron -f