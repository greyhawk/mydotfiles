if not test -f ~/.config/fish/functions/fisher.fish
  echo "Installing fisherman for the first time"
  curl -sLo ~/.config/fish/functions/fisher.fish --create-dirs git.io/fisher
  fisher
end

test -e {$HOME}/.iterm2_shell_integration.fish ; and source {$HOME}/.iterm2_shell_integration.fish
source /Users/ging/.pyenv/versions/miniconda3-latest/etc/fish/conf.d/conda.fish

set -e fish_user_paths
set -g fish_user_paths "/usr/local/opt/imagemagick@6/bin" $fish_user_paths
set -g fish_user_paths "$JAVA_HOME/bin" $fish_user_paths
set -g fish_user_paths "/Users/ging/.nvm/versions/node/v8.11.1/bin" $fish_user_paths
set -g fish_user_paths "/usr/local/Cellar/pyenv/1.2.7/libexec" $fish_user_paths
set -g fish_user_paths "/Users/ging/.pyenv/shims" $fish_user_paths
set -g fish_user_paths "/usr/local/opt/openssl/bin" $fish_user_paths
set -g fish_user_paths "/usr/local/opt/go/libexec/bin" $fish_user_paths
set -g fish_user_paths "/Users/ging/Codes/golang/bin" $fish_user_paths
set -g fish_user_paths "/opt/X11/bin" $fish_user_paths
set -g fish_user_paths "/Library/TeX/texbin" $fish_user_paths
set -g fish_user_paths "/Applications/Wireshark.app/Contents/MacOS" $fish_user_paths
set -g fish_user_paths "/usr/local/opt/texinfo/bin" $fish_user_paths
set -g fish_user_paths "/usr/local/opt/gettext/bin" $fish_user_paths
set -g fish_user_paths "/Users/ging/.local/bin" $fish_user_paths

rvm default
