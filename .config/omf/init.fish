function fish_greeting
end
set -gx JAVA_HOME /Library/Java/JavaVirtualMachines/jdk1.8.0_102.jdk/Contents/Home/jre
set -gx ANDROID_HOME /usr/local/opt/android-sdk
set -gx GROOVY_HOME /usr/local/opt/groovy/libexec
set -gx HOMEBREW_GITHUB_API_TOKEN 'f6523f99cbd4d7fa10bed8d6e314c523bca0a89e'
set -x PATH $PATH /usr/local/sbin ~/.nvm/versions/node/v6.9.2/bin

function nvm
    bass source ~/.nvm/nvm.sh --no-use ';' nvm $argv
end

function git
   hub $argv
end
