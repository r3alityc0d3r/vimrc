1. clone this repository to your local user's root directory

cd ~
git clone https://github.com/r3alityc0d3r/vimrc.git

2. copy the .vimrc to your root folder
cp ~/vimrc/.vimrc .

3. install vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

4. install all the plugins
vim +PluginInstall +qall

5. make sure you have the puppetlint gem installed globally
gem install puppet-lint

enjoy!!



if you are using putty to access your linux vm then you will need to follow
these links to get the special characters and colors to work correctly:

if you are running centos 6 then run the following command before following the 
next link:
sudo yum install fontconfig

http://stackoverflow.com/questions/19105279/how-can-i-setup-my-vim-airline-or-vim-powerline
http://pdalinis.blogspot.com/2013/08/putty-powerline.html

may need this line in your .bash_profile
export TERM="xterm-256color"

this is for fedora to get powerline installed:

https://fedoramagazine.org/add-power-terminal-powerline/
