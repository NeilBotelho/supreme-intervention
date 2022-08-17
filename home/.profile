#Clear Home
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"
export XINITRC="$XDG_CONFIG_HOME"/X11/xinitrc
export XAUTHORITY="$XDG_RUNTIME_DIR"/Xauthority
export ZDOTDIR=$HOME/.config/zsh
#Custom
export WALLPAPER=/home/neil/.config/wallpapers/collections
export TERMINAL="alacritty"
export TERM="alacritty"
export EDITOR=/usr/bin/vim
export INPUTRC="$XDG_CONFIG_HOME"/readline/inputrc
export DISK1MONITOR="$XDG_DATA_HOME/ssd_monitor/1"
export DISK2MONITOR="$XDG_DATA_HOME/ssd_monitor/2"

#Applications
export NLTK_DATA="$XDG_DATA_HOME/nltk_data"
export NODE_REPL_HISTORY="$XDG_DATA_HOME"/node_repl_history
export NPM_CONFIG_USERCONFIG=$XDG_CONFIG_HOME/npm/npmrc
export HISTFILE="$XDG_CONFIG_HOME/bash/history"
export WINEPREFIX="$XDG_DATA_HOME"/wineprefixes/default
export PASSWORD_STORE_DIR="$XDG_DATA_HOME"/pass
export QT_QPA_PLATFORMTHEME="qt5ct"
export QT_AUTO_SCREEN_SCALE_FACTOR=0
export GTK2_RC_FILES="$HOME/.cache/gtkcache/.gtkrc-2.0"
export MYSQL_HISTFILE="$XDG_DATA_HOME"/mysql_history
export WEECHAT_HOME="$XDG_CONFIG_HOME"/weechat
export KERAS_HOME="$XDG_CONFIG_HOME/keras"
export BAT_THEME="gruvbox-dark"
export MUSIC_DIR="$HOME/.local/share/myMusic/"
export MYVIMRC="/home/neil/.config/nvim/init.lua"
export CHIA_ROOT="/home/neil/.config/chia"

#Langs/Dev
export GOPATH="$XDG_DATA_HOME"/go
export GOBIN="$GOPATH/bin"
export CARGO_HOME="$XDG_DATA_HOME"/cargo
export RUSTUP_HOME="$XDG_DATA_HOME"/rustup
export TORCH_HOME="$XDG_CONFIG_HOME"/torch
export IPYTHONDIR="$XDG_CONFIG_HOME"/jupyter
export PYTHONSTARTUP="$XDG_CONFIG_HOME/python/mvPythonHist.py"
export JUPYTER_CONFIG_DIR="$XDG_CONFIG_HOME"/jupyter
export VSCODE_PORTABLE="$XDG_DATA_HOME"/vscode
export GEM_HOME="$XDG_DATA_HOME"/gem
export GEM_SPEC_CACHE="$XDG_CACHE_HOME"/gem 

export GNUPGHOME="$XDG_DATA_HOME"/gnupg
export ICEAUTHORITY="$XDG_CACHE_HOME"/ICEauthority
#export XAUTHORITY="$XDG_RUNTIME_DIR"/Xauthority

# Disable less history
export LESSHISTFILE=-

#INFINITE HISTORY
export HISTSIZE="100000"
#Add to Path
export PATH=$PATH:/home/neil/.local/bin
export PATH=/home/neil/.config/bin:$PATH
export PATH=$PATH:/home/neil/.local/share/cargo/bin
export PATH=$PATH:/usr/lib/jvm/java-11-openjdk/bin
export PATH=$PATH:$GOBIN
export PATH=$PATH:/home/neil/.local/share/npm/lib/node_modules/vscode-langservers-extracted/bin/
#If xsession not running start it
if [ -z "$DISPLAY" ]&& [ "${XDG_VTNR}" -eq 1 ]; then
    startx $XDG_CONFIG_HOME/X11/xinitrc
	xset -b
fi
source ~/.bashrc

. "/home/neil/.local/share/cargo/env"
