ZSH=/Users/carmstrong/.oh-my-zsh
ZSH_THEME="robbyrussell"
HIST_STAMPS="mm/dd/yyyy"
plugins=(aws docker git git-remote-branch golang ruby vagrant)
source $ZSH/oh-my-zsh.sh

# User configuration
export DOCKER_HOST=tcp://$(boot2docker ip 2>/dev/null):2375
export DEIS_REGISTRY=`boot2docker ip 2>/dev/null`:5000
export FLEETCTL_TUNNEL=172.17.8.100

export JAVA_HOME=$(/usr/libexec/java_home)
export GOPATH=/Users/carmstrong/gocode
export PATH="/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/go/bin:$GOPATH/bin"

# Deis
export DEIS_TEST_KEY=~/.ssh/deis
export DEIS_TEST_SSH_KEY=$DEIS_TEST_KEY
export DEIS_TEST_HOSTNAME=deis.gingerweather.com
export DEIS_TEST_HOSTS=172.31.25.61

export DEIS_NUM_INSTANCES=3

eval "$(rbenv init -)"

alias fctl='fleetctl --strict-host-key-checking=false'
export FLEETCTL_TUNNEL=172.17.8.100

export DEISCTL_UNITS=/Users/carmstrong/gocode/src/github.com/deis/deisctl
