# Test and then source some options
if [ -f ~/.zsh/zshoptions ]; then
        source ~/.zsh/zshoptions
else
        print "Note: ~/.zsh/zshoptions is unavailable."
fi

# Test and then source the lineeditor
if [ -f ~/.zsh/zshzle ]; then
        source ~/.zsh/zshzle
else
        print "Note: ~/.zsh/zshzle is unavailable."
fi

# Test and then source the keybindings
if [ -f ~/.zsh/zshbindings ]; then
        source ~/.zsh/zshbindings
else
        print "Note: ~/.zsh/zshbindings is not available."
fi

# Test and then source the completionsystem
if [ -f ~/.zsh/zshcompctl ]; then
        source ~/.zsh/zshcompctl
else
        print "Note: ~/.zsh/zshcompctl is unavailable."
fi

# Test and then source the functions
if [ -f ~/.zsh/zshfunctions ]; then
	source ~/.zsh/zshfunctions
else
	print "Note: ~/.zsh/zshfunctions is unavailable."
fi

# Test and then source the export
if [ -f ~/.zsh/zshexport ]; then
	source ~/.zsh/zshexport
else
	print "Note: ~/.zsh/zshexport is unavailable."
fi


# Test and then source alias definitions.
if [ -f ~/.zsh/zshaliases ]; then
        source ~/.zsh/zshaliases
else
        print "Note: ~/.zsh/zshaliases is unavailable."
fi

source /opt/bin/init.sh

# Initialize screen

# Auto-screen invocation. see: http://taint.org/wk/RemoteLoginAutoScreen
# if we're coming from a remote SSH connection, in an interactive session
# then automatically put us into a screen(1) session.   Only try once
# -- if $STARTED_SCREEN is set, don't try it again, to avoid looping
# if screen fails for some reason.
#_ssh_auth_save() {
#        ln -sf "$SSH_AUTH_SOCK" "$HOME/.screen/ssh-auth-sock.$HOSTNAME"
#}
#alias screen="_ssh_auth_save ; screen"


#if [ "$PS1" != "" -a "${STARTED_SCREEN:-x}" = x -a "${SSH_TTY:-x}" != x ]
#then
#  STARTED_SCREEN=1 ; export STARTED_SCREEN
#  [ -d $HOME/lib/screen-logs ] || mkdir -p $HOME/lib/screen-logs
#  sleep 1
#  screen -RaAD && exit 0
#  # normally, execution of this rc script ends here...
#  #  echo "Screen failed! continuing with normal bash startup"
#fi
## [end of auto-screen snippet]
export JAVA_HOME=/Library/Java/Home
export CATALINA_HOME=/var/tomcat

export PATH="${PATH}:${HOME}/bin"

export LESS_TERMCAP_mb=$'\E[01;31m'
export LESS_TERMCAP_md=$'\E[01;31m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[01;44;33m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[01;32m'
 # comment these out in Ubuntu
     export LESS_TERMCAP_mb=$'\E[01;31m'         # begin blinking
     export LESS_TERMCAP_me=$'\E[0m'        # end mode

     export LESS_TERMCAP_se=$'\E[0m'        # end standout-mode
     export LESS_TERMCAP_so=$'\E[38;5;246m' # begin standout-mode - info box
     export LESS_TERMCAP_ue=$'\E[0m'        # end underline

     export LESS_TERMCAP_us=$'\E[04;33;146m'    # begin underline is now yellow
     #                             |  |  |
     #                             |  |----------------- yellow
     #                             |-------------------- underline

     # to have the indication of cursor's location and line numbers, and R
     export LESS="-mNR"
     #               |--------- only ASCII color
