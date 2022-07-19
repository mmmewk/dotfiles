/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

brew install fish
yarn global add matts-dev-tools
yarn global add jira-cl

sed -i.bak s/JIRA_API_KEY/$JIRA_API_KEY/ ~/.jira-cli.json
rm ~/.jira-cli.json.bak

fish
