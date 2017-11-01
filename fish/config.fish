if not test -f ~/.config/fish/functions/fisher.fish
  echo "Installing fisherman for the first time"
  curl -sLo ~/.config/fish/functions/fisher.fish --create-dirs git.io/fisher
  fisher
end

test -e {$HOME}/.iterm2_shell_integration.fish ; and source {$HOME}/.iterm2_shell_integration.fish
set -e fish_user_paths
set -U fish_user_paths "/usr/local/opt/imagemagick@6/bin" $fish_user_paths
set -U fish_user_paths "$JAVA_HOME/bin" $fish_user_paths
set -U fish_user_paths "/Users/ging/.nvm/versions/node/v6.9.5/bin" $fish_user_paths
set -U fish_user_paths /Users/ging/.pyenv/versions/venv-3.6.1/bin /usr/local/Cellar/pyenv/1.1.2/libexec /Users/ging/.pyenv/shims $fish_user_paths
set -U fish_user_paths /usr/local/opt/openssl/bin $fish_user_paths
set -U fish_user_paths /usr/local/opt/go/libexec/bin /Users/ging/Codes/golang/bin $fish_user_paths
set -U fish_user_paths /opt/X11/bin /Library/TeX/texbin $fish_user_paths
set -U fish_user_paths /Applications/Wireshark.app/Contents/MacOS $fish_user_paths

