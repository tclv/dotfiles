brew install iterm2
brew install fish
brew install neovim
brew install asdf
brew install tmux brew install xz
brew intall node
brew install ripgrep
brew install fd

mkdir -p ~/.config/fish
mkdir -p ~/.config/nvim
mkdir -p ~/.config/pypoetry

## Bash/zshrc
echo ". /opt/homebrew/opt/asdf/libexec/asdf.sh" >> ~/.profile
echo 'export PATH=~/.local/bin:$PATH' >> ~/.profile
echo 'export PATH=~/.local/bin:$PATH' >> ~/.zprofile
export PATH=~/.local/bin:$PATH

## Fish
which fish | sudo tee -a /etc/shells
echo "source /opt/homebrew/opt/asdf/libexec/asdf.fish" >> ~/.config/fish/config.fish
which fish | xargs chsh -s

## Python
asdf plugin-add python
asdf install python latest
asdf global python latest


## Nvim
ln -sf $(pwd)/nvim/* ~/.config/nvim
git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim
mkdir -p ~/.python-nvim/python3
cd ~/.python-nvim/python3
python -m venv venv
source venv/bin/activate
pip install neovim
deactivate
cd -

npm install -g neovim

## Tmux
ln -sf $(pwd)/.tmux.conf ~/

## Poetry
curl -sSL https://install.python-poetry.org | python -
poetry self add artifacts-keyring poetry-dynamic-versioning
ln -sf $(pwd)/pypoetry/* ~/.config/pypoetry

## Dotnet
brew install dotnet dotnet-sdk

## Git
ln -sf $(pwd)/.gitignore ~/
ln -sf $(pwd)/.gitconfig ~/
ln -sf $(pwd)/.gitconfig.entis ~/

## Powerline fonts
git clone https://github.com/powerline/fonts
cd fonts
./install.sh
cd -
rm -rf fonts

## Miscaleneous
brew install tldr
brew install difftastic
