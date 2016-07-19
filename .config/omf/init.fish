function fish_greeting
end

set -x PATH $PATH ~/.nvm/versions/node/v6.3.0/bin
function nvm
    bass source ~/.nvm/nvm.sh --no-use ';' nvm $argv
end

function git
   hub $argv
end
