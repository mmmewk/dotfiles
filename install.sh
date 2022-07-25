# Copy dotfiles to home directory
mv .gitconfig ~/.gitconfig
mv .config/* ~/.config

# Inject jira api token into dotfile
cat > ~/.jira-cli.json <<EOL
{
  "protocol": "https",
  "host": "loftium.atlassian.net",
  "username": "matthew@loftium.com",
  "password": "$JIRA_API_KEY",
  "apiVersion": "2",
  "strictSSL": true
}
EOL

# Install fish shell and set as default
sudo apt-get update
sudo apt-get install -y fish

echo fish >> ~/.bashrc

# Install NPM packages for command line tools
npm install --location=global matts-dev-tools
npm install --location=global jira-cl
