zmodload zsh/zprof
export LANG=en_US.UTF-8


# zim plugin manager: github link:https://github.com/zimfw/zimfw?tab=readme-ov-file#set-up-zshrc
export ZIM_CONFIG_FILE=~/.config/zsh/zimrc
export ZIM_HOME=~/.zim
# Download zimfw plugin manager if missing.
if [[ ! -e ${ZIM_HOME}/zimfw.zsh ]]; then
  curl -fsSL --create-dirs -o ${ZIM_HOME}/zimfw.zsh \
      https://github.com/zimfw/zimfw/releases/latest/download/zimfw.zsh
fi
# Install missing modules and update ${ZIM_HOME}/init.zsh if missing or outdated.
if [[ ! ${ZIM_HOME}/init.zsh -nt ${ZIM_CONFIG_FILE:-${ZDOTDIR:-${HOME}}/.zimrc} ]]; then
  source ${ZIM_HOME}/zimfw.zsh init -q
fi
# Initialize modules.
source ${ZIM_HOME}/init.zsh

# source cargo
. "$HOME/.cargo/env"

# source my pyvenv 
source ~/.py3venv/bin/activate

#export PATH="/opt/homebrew/bin/":$PATH
export PATH=$HOME/.local/bin:$PATH
export PATH="$HOME/.local/bin":$PATH
export PATH="/opt/homebrew/opt/ruby/bin":$PATH
export PATH="/opt/homebrew/opt/curl/bin:$PATH"
# golang
export GO111MODULE=on
export GOPROXY=https://mirrors.aliyun.com/goproxy/
# java lang: must config JAVA_HOME
export JAVA_HOME=/opt/homebrew/Cellar/openjdk/23.0.1
export PATH=$JAVA_HOME/bin:$PATH

export PATH="/opt/homebrew/opt/llvm/bin:$PATH"
export PATH=/Users/bytedance/.local/bin:$PATH

export LDFLAGS="-L/opt/homebrew/opt/llvm/lib"
export CPPFLAGS="-I/opt/homebrew/opt/llvm/include"
export CMAKE_PREFIX_PATH="/opt/homebrew/opt/llvm"
# util
alias git='LANG=en_GB git'
alias ls=eza
alias kk='kitty +kitten'
# autojump
[ -f $(brew --prefix)/etc/profile.d/autojump.sh ] && source $(brew --prefix)/etc/profile.d/autojump.sh

eval "$(direnv hook zsh)"
eval "$(/opt/homebrew/bin/mise activate zsh)"

# for tmux work good
TERM=xterm-256color


eval "$(starship init zsh)"
