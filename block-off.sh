curl -X PUT "https://api.cloudflare.com/client/v4/zones/db0036a57189911a561e6326e350ea09/firewall/rules/e72788c631134602b4ccb4664d42c0a7" \
     -H "X-Auth-Email: hoanghpqk189@gmail.com" \
     -H "X-Auth-Key: 4aa920ab578ca860209a05303f794672a605c" \
     -H "Content-Type: application/json" \
     --data '{
     "action": "block",
     "priority": 1000,
     "paused": true,
     "description": "Block Quốc Tế",
     "filter": {
    "id": "e1fb346390494fe28ea907e6c1f83fcc",
    "expression": "(not ip.geoip.country in {\"KP\" \"VN\" \"KR\"})",
    "paused": false,
    "description": "Block Quốc Tế"
  }
  }'
