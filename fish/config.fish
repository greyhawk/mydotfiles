if not test -f ~/.config/fish/functions/fisher.fish
  echo "Installing fisherman for the first time"
  curl -sLo ~/.config/fish/functions/fisher.fish --create-dirs git.io/fisher
  fisher
end

set -g fish_user_paths "/usr/local/opt/openssl/bin" "/usr/local/opt/go/libexec/bin" "/usr/local/sbin" $fish_user_paths
