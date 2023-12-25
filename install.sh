#!/usr/bin/env bash

dotfilesPath=$(cd "$(dirname "$0")"; pwd)

linkProcess() {
    ignoreFilePath=$dotfilesPath/.linkignore
    ignoreFile=[]
    ignoreFile=(`cat "$ignoreFilePath"`)
    for filePath in $(find $dotfilesPath -maxdepth 1 -name '.*');
    do
        file=`basename $filePath`
        if [[ $file == '.linkignore' || $file == '.dotfiles' || $filePath == $(pwd) ]]; then
            continue
        fi

        continueFlag='0'
        for ((i=0;i<${#ignoreFile[@]};i++));
        do
            if [[ $file == ${ignoreFile[$i]} ]]; then
                continueFlag='1'
                break
            fi
        done

        if [[ $continueFlag == '1' ]]; then
            continue
        fi

        if [ -f ~/$file ] || [ -d ~/$file ]; then
            rm -rf ~/$file
        fi
        ln -s $dotfilesPath/$file ~/$file
    done
}

function fzf_install(){
    git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
    printf 'y\ny\nn\n' | ~/.fzf/install
}

function nvim_install() {
    # linux install 
    curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
    chmod u+x nvim.appimage
    ./nvim.appimage --appimage-extract
    ./squashfs-root/AppRun --version
    # Optional: exposing nvim globally.
    sudo mv squashfs-root /
    sudo ln -s /squashfs-root/AppRun /usr/bin/nvim
}

function tmux_install() {
    sudo apt-get install tmux ripgrep fd-find unzip
    sudo apt-get upgrade git
    sudo apt-get install mercurial
    git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
}

function node_install() {
    # https://github.com/nodesource/distributions#debian-versions
    sudo apt-get update
    sudo apt-get install -y ca-certificates curl gnupg
    sudo mkdir -p /etc/apt/keyrings
    curl -fsSL https://deb.nodesource.com/gpgkey/nodesource-repo.gpg.key | sudo gpg --dearmor -o /etc/apt/keyrings/nodesource.gpg
    NODE_MAJOR=20
    echo "deb [signed-by=/etc/apt/keyrings/nodesource.gpg] https://deb.nodesource.com/node_$NODE_MAJOR.x nodistro main" | sudo tee /etc/apt/sources.list.d/nodesource.list
    sudo apt-get update
    sudo apt-get install nodejs -y
}

function java_jdtls() {
    download_file='jdt-language-server-1.29.0-202310022015.tar.gz'
    wget https://www.eclipse.org/downloads/download.php?file=/jdtls/snapshots/${download_file}
    tar xzf ${download_file}
}

function pythonlib_install() {
    pip3 install absl-py pathlib2
    # tldr
    pip3 install tldr
}

function lazygit_install() {
    LAZYGIT_VERSION=$(curl -s "https://api.github.com/repos/jesseduffield/lazygit/releases/latest" | grep -Po '"tag_name": "v\K[^"]*')
    curl -Lo lazygit.tar.gz "https://github.com/jesseduffield/lazygit/releases/latest/download/lazygit_${LAZYGIT_VERSION}_Linux_x86_64.tar.gz"
    tar xf lazygit.tar.gz lazygit
    sudo install lazygit /usr/local/bin
}
function linux_install_proc() {
    nvim_install
    fzf_install
    tmux_install
    node_install
}
function mac_install_proc() {
    brew install tmux, neovim, node, ripgrep, fd, unzip
    fzf_install
}
function common_install_proc() {
    pythonlib_install
}
main() {
    # 构建用户目录软连接
    linkProcess $dotfilesPath
    
    mac_install_proc
    common_install_proc

}
main

