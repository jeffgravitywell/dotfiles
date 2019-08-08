# install vim
brew install vim

# make the default directories for vim needed for .vimrc
mkdir ~/.vim/backup
mkdir ~/.vim/swap
mkdir ~/.vim/undo
mkdir ~/.vim/plugged

#install vim-plug 
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# install the latest build of neovim
brew install neovim

# install shell tools
brew install zsh

# install oh-my-zsh (https://ohmyz.sh) 
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# install tmux
brew install tmux

# copy the dot files from '~/dotfiles/stub' to root of user folder (~)
cp ~/dotfiles/stub/* ~/

# copy files from '~/dotfiles/neovim' (.config) to the user folder (~)
cp -r ~/dotfiles/neovim ~/

