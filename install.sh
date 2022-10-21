# Copy dotfiles to home directory
cp .gitconfig ~/.gitconfig

# Copy dotfiles to home directory
cp prepare-commit-msg ~/.git-templates/hooks/prepare-commit-msg

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

# Install NPM packages for command line tools
npm install --location=global matts-dev-tools
npm install --location=global jira-cl

# Install fish functions
touch ~/.config/fish/
cp -r .config/fish/* ~/.config/fish
source ~/.config/fish/functions/reload-functions.fish
