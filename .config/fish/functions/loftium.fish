function ticketnum
    git current | string match -r 'EN-\d*'
end

function ticket
    set -l ticketnum (ticketnum)
    echo (jira i | grep $ticketnum)
    echo "https://loftium.atlassian.net/browse/$ticketnum"
end

function move-ticket
    set -l ticketnum (ticketnum)

    if set -q ticketnum[1]
        jira issue $ticketnum --transition
    else
        echo 'No Ticket Found'
    end
end

function rs
    dr bundle exec rspec $argv
end

function srb-update
    dr ./sorbet/rbi-update.sh
end

function rails-reset
    dr touch tmp/restart.txt
end
