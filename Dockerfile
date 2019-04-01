FROM zabbix/zabbix-server-pgsql:latest
LABEL maintainer "Michael Henke <433270+aphex3k@users.noreply.github.com>"

# Install wget with ssl support
RUN apk --no-cache add openssl
RUN apk --no-cache add wget
RUN apk --no-cache add ca-certificates

COPY ["alertscripts/prowl.sh", "/usr/lib/zabbix/alertscripts/"]
COPY ["alertscripts/prowl", "/usr/lib/zabbix/alertscripts/"]
