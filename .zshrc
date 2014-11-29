ZSH=/Users/carmstrong/.oh-my-zsh
ZSH_THEME="robbyrussell"
HIST_STAMPS="mm/dd/yyyy"
plugins=(aws docker git git-remote-branch golang ruby vagrant)
source $ZSH/oh-my-zsh.sh

# User configuration
export B2D_IP=`boot2docker ip 2>/dev/null`
export UBUNTU_IP=172.21.12.200
export DOCKER_HOST=tcp://$B2D_IP:2376
export DEV_REGISTRY=$B2D_IP:5000
export FLEETCTL_TUNNEL=172.17.8.100
export HOST_IPADDR=$B2D_IP
export DOCKER_CERT_PATH=$HOME/.boot2docker/certs/boot2docker-vm
export DOCKER_TLS_VERIFY=1

export JAVA_HOME=$(/usr/libexec/java_home)
export GOPATH=/Users/carmstrong/gocode
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/go/bin:$GOPATH/bin"

eval "$(rbenv init -)"

alias fctl='fleetctl --strict-host-key-checking=false'
export FLEETCTL_TUNNEL=172.17.8.100
export DEISCTL_TUNNEL=172.17.8.100
export DEISCTL_UNITS=/Users/carmstrong/gocode/src/github.com/deis/deis/deisctl/units
