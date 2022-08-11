# Copy dotfiles to home directory
cp .gitconfig ~/.gitconfig

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

# HACK: Set fish as default shell by running when bash boots
echo fish >> ~/.bashrc

# Install fish functions
touch ~/.config/fish/
cp -r .config/fish/* ~/.config/fish

# Install NPM packages for command line tools
npm install --location=global matts-dev-tools
npm install --location=global jira-cl
