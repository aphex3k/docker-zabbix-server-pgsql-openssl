#!/bin/bash
# 1. Use macro {ALERT.SENDTO} as first parameter (this will be the prowl API key for the user)
# 2. Use macro {ALERT.SUBJECT} as second parameter
# 3. Use macro {ALERT.MESSAGE} as third parameter

wget "https://prowlapp.com/publicapi/add?apikey=$1&application=Zabbix&event=$2&description=$3&priority=0" -O /dev/null
