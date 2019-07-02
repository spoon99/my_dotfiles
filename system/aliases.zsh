# Easier navigation: .., ..., ...., ....., ~ and -
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ~="cd ~" # `cd` is probably faster to type though
alias -- -="cd -"

alias reload!='. ~/.zshrc'

# Shortcuts
alias dl="cd ~/Downloads"
alias dt="cd ~/Desktop"
alias p="cd ~/projects"
alias g="git"
alias h="history"

# Flush Directory Service cache
alias flush="sudo dscacheutil -flushcache && sudo killall -HUP mDNSResponder"

# IP addresses
alias localip="ipconfig getifaddr en0"
alias localvpnip="ipconfig getifaddr jnc0"
alias ips="ifconfig -a | grep -o 'inet6\? \(addr:\)\?\s\?\(\(\([0-9]\+\.\)\{3\}[0-9]\+\)\|[a-fA-F0-9:]\+\)' | awk '{ sub(/inet6? (addr:)? ?/, \"\"); print }'"

# View HTTP traffic
alias sniff="sudo ngrep -d 'en0' -t '^(GET|POST) ' 'tcp and port 80'"
alias sniff1="sudo ngrep -d 'jnc0' -t '^(GET|POST) ' 'tcp and port 80'"
alias httpdump="sudo tcpdump -i en0 -n -s 0 -w - | grep -a -o -E \"Host\: .*|GET \/.*\""
alias httpdump1="sudo tcpdump -i jnc0 -n -s 0 -w - | grep -a -o -E \"Host\: .*|GET \/.*\""

#alias
alias conn='~/scripts/deploy.exp'
alias conngit='~/scripts/gitlab.exp'
alias va='source venv/bin/activate'
alias eh='sudo vim /etc/hosts'
alias ea='vim ~/.dotfiles/system/aliases.zsh'
alias ez='vim ~/.zpreztorc'
alias ezz='vim ~/.zshrc'
alias eg='code -n ~/.gitconfig'


# One of @janmoesen’s ProTip™s
for method in GET HEAD POST PUT DELETE TRACE OPTIONS; do
	alias "$method"="lwp-request -m '$method'"
done

# kube
alias startkube='minikube start --vm-driver=xhyve' 

# mobile
alias android='/Users/shkim84/Library/Android/sdk/emulator/emulator -avd Nexus_5_API_28 -netdelay none -netspeed full'
