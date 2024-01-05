#alias rsys='tsh login --proxy teleport.rsystemscloud.com --user=shawn'
alias rsyshou='ssh -Y root@216.110.71.9'
alias rsyschamp='ssh -Y shawn@199.184.211.66'
alias nash1='ssh root@nash1.vcompute.com'
alias texoma='ssh root@texoma.vcompute.com'
alias geoe='ssh shawn@mail.geoenergycorp.com'
alias mailg='ssh -Y root@mail.geoenergycorp.com'
alias nas='ssh sshd@192.168.1.200'
alias box='ssh -Y shawn@192.168.1.100'
alias home='ssh -p 4444 -Y pi@box.stephens.me'
alias stephensme='ssh stephens.me@ssh.gb.stackcp.com'
alias easywget='wget -c --no-check-certificate --user=shawn174 --password=SRV1rules!'
alias ytdl='youtube-dl --format=bestvideo+bestaudio'
alias serial='minicom -D /dev/tty.usbserial -b 19200'
alias dnsflush='sudo dscacheutil -flushcache; sudo killall -HUP mDNSResponder'
alias showdotfiles='defaults write com.apple.finder AppleShowAllFiles TRUE; killall Finder'
alias hidedotfiles='defaults write com.apple.finder AppleShowAllFiles FALSE; killall Finder'
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
export HOMEBREW_NO_ENV_HINTS=true
export PATH="/usr/local/sbin:$PATH"
autoload -Uz compinit
compinit
eval "$(op completion zsh)"; compdef _op op
