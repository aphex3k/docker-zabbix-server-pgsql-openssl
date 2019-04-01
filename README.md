<b style="color: white;background-color: red">&nbsp;Zabbix&nbsp;</b>&nbsp;+&nbsp;<b style="color: #1383de">docker</b>&nbsp;+&nbsp;<b style="color: #28537E">PostgreSQL</b>&nbsp;+&nbsp;<b style="color: #4c0000">Open</b><b style="color: #c28425">SSL</b>

This docker image is based on [zabbix-server-pgsql](https://hub.docker.com/r/zabbix/zabbix-server-pgsql) with added support for openssl, especially when used with wget in external scripts.

## Installation
Just follow the installation instruction of the [parent image](https://hub.docker.com/r/zabbix/zabbix-server-pgsql).

## Usage
Amongst other things, this image allows for `wget` to make secure http connections, especially useful when used in external scripts or for [custom media](https://www.zabbix.com/documentation/current/manual/config/notifications/media/script) in the Zabbix appliance.

### Example: Prowl
If you want to use [Prowl](https://www.prowlapp.com) with your Zabbix installation to receive push notifications just configure a new meda type:
<ul>
<li>Script name: prowl</li>
<li>Script parameters: <small>(order matters!)</small>
<ol>
<li>{ALERT.SENDTO}</li>
<li>{ALERT.SUBJECT}</li>
<li>{ALERT.MESSAGE}</li>
</ol>
</li>
</ul>
<img src="https://raw.githubusercontent.com/aphex3k/docker-zabbix-server-pgsql-openssl/master/_images/prowl_media_type.png"/>