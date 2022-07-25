# Copy dotfiles to home directory
mv .gitconfig ~/.gitconfig

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

# Install fish shell
sudo apt-get update
sudo apt-get install -y fish

# HACK: Set fish as default shell by running when bash boots
echo fish >> ~/.bashrc

# Install fish functions
mv .config/fish/* ~/.config/fish/

# Install NPM packages for command line tools
npm install --location=global matts-dev-tools
npm install --location=global jira-cl
