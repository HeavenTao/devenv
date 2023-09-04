# Version:0.0.1
FROM archlinux
MAINTAINER ht "542248377@qq.com"
# mirrorlist
COPY mirrorlist /etc/pacman.d/
# update
RUN pacman -Syyu --noconfirm
# install
RUN pacman -Sy --noconfirm nodejs-lts-hydrogen npm fish xclip neovim python python-pip python-virtualenv git starship python-pynvim 
# npm mirrorlist
RUN npm set registry https://registry.npmmirror.com
# pip mirrorlist
COPY pip.conf /root/.pip/pip.conf
# neovim nodejs
RUN npm install -g neovim
# git
RUN git config --global credential.helper store
# lang
ENV LANG en_US.utf8
# create user
RUN useradd -m -s /usr/bin/fish -g wheel ht
# fish config
RUN echo "starship init fish | source" >> ~/.config/fish/config.fish
RUN echo "Done!"
