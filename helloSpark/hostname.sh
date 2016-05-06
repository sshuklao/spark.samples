hostname=$(hostname)

#limit hostname to base (no fqdn) name
hostname=${hostname%%.*}

if [[ $(hostname -I) =~ 10.[0-9]*.[0-9]*.[0-9]* ]]; then
  ip=${BASH_REMATCH[0]}
 else ip="unknown_ip"
fi

echo "Hostname \"${hostname//./_}_${ip//./_}\"" > hostname.conf
