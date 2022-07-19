yarn global add matts-dev-tools
yarn global add jira-cl

cat > .jira-cli.json <<EOL
{
  "protocol": "https",
  "host": "loftium.atlassian.net",
  "username": "matthew@loftium.com",
  "password": "$JIRA_API_KEY",
  "apiVersion": "2",
  "strictSSL": true
}
EOL
