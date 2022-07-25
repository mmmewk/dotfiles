function gco
    git checkout $argv
end

function gcm
    if not test-lease-backend
        return 1
    end

    gcm! $argv
end

function gcm!
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
    if test (git current) = "master"
        if prompt "Are you sure you want to push to master?"
            gpu!
        end
    else
        gpu!
    end
end

function gpu!
    git push -u origin (git current)
end

function gpu!!
    git push -u --force origin (git current)
end
