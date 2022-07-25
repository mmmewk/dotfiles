function gco
    git checkout $argv
end

function gcm
    while [ (git last) = 'progress save' ]
        git uncommit
    end
    git add .
    set -l ticketnum (ticketnum)
    if set -q ticketnum[1]
        git commit -m "[$ticketnum] $argv"
    else
        git commit -m $argv
    end
end

function gs
    git status
end

function gpu
    git push -u origin (git current)
end

function gpu!
    git push -u --force origin (git current)
end
