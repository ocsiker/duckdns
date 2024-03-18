#!/bin/bash
warpstatus=$(warp-cli status)
statusConnect=$(echo ${warpstatus} | grep -ciw "connected")

# echo ${statusDisconnect}

if [ ${statusConnect} == 1 ]; then
	$(warp-cli disconnect) >/dev/null 2>&1

	# echo "disconnect"
fi

echo url="https://www.duckdns.org/update?domains=ocshome&token=669ce712-9476-42d9-96e1-77aa90df9064&verbose=true&ip=" | curl -k -o ~/duckdns/duck.log -K -
