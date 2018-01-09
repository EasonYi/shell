#!/bin/bash
# Author: Eason Yi
# Date: 2018-01-06

echo -n "" > tmp.log && for app in $(pbpaste|cut -d':' -f1||cut -f1); do
 echo "APP_NOTIFY_MAP.put(\"${app}\", new AppNotify(\"${app}\", \"\", \"\", \"\"));" >> tmp.log
done && pbcopy < tmp.log && pbpaste && rm tmp.log
