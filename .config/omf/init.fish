function fish_greeting
end
set -gx JAVA_HOME /Library/Java/JavaVirtualMachines/jdk1.8.0_102.jdk/Contents/Home/jre
set -gx ANDROID_HOME /usr/local/opt/android-sdk
set -gx GROOVY_HOME /usr/local/opt/groovy/libexec
set -gx RANCHER_URL https://rancher.coloseo.io
set -gx RANCHER_ACCESS_KEY '438216543CDA90DFF28A'
set -gx RANCHER_SECRET_KEY 'DCX2PbEvuqqed7c5oZWEXYX1NLCLrD5xV7zHuv4Y'
set -gx HOMEBREW_GITHUB_API_TOKEN 'f6523f99cbd4d7fa10bed8d6e314c523bca0a89e'
set -x PATH $PATH /usr/local/sbin ~/.nvm/versions/node/v6.6.0/bin

function nvm
    bass source ~/.nvm/nvm.sh --no-use ';' nvm $argv
end

function git
   hub $argv
end
