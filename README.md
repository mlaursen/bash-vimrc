# dotfiles
A repo for my dotfiles on a MacBook.

## Installation
### Xcode cli

```sh
$ xcode-select --install
```

### Xcode
Install Xcode from the app store. Accept the terms and conditions for using it. This part is optional,
but mostly recommended for the iOS emulators.

### [Homebrew](http://brew.sh/)

```sh
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

### Clone this repo into the root directory

```sh
mlaursen @ ~/
$ git init
$ git remote set-url origin git@github.com:mlaursen/dotfiles.git
$ git pull origin macbook
```

### Install programs and dependencies
```sh
mlaursen @ ~/
$ brew bundle
```

### Setting colorscheme to [solarized](http://ethanschoonover.com/solarized/files/solarized.zip)
Download the solarized colorscheme and update iterm2 to use it.

```sh
$mlaursen @ ~/
$ curl -O http://ethanschoonover.com/solarized/files/solarized.zip \
  && unzip solarized.zip \
  && open solarized/iterm2-colors-solarized/Solarized\ Dark.itermcolors \
  && rm -rf solarized solarized.zip
```

### Initializing Linters and SASS

```sh
$ npm install -g vscode-css-languageserver-bin \
        create-react-app \
        lerna \
        tslint \
        typescript
$ gem install sass scss_lint
```

### Installing vim plugins

```
mlaursen @ ~/
$ git clone https://github.com/k-takata/minpac.git \
    ~/.vim/pack/minpac/opt/minpac
$ vim +PackUpdate
```

### Installing neovim plugins

```sh
mlaursen @ ~/
$ pip3 install neovim
$ git clone https://github.com/k-takata/minpac.git \
    ~/.config/nvim/pack/minpac/opt/minpac
$ nvim +PackUpdate
```


#### Create a PAC for vim-rhubarb
TO get some better GitHub vim support with [vim-fugitive](https://github.com/tpope/vim-fugitive) + [vim-rhubarb](https://github.com/tpope/vim-rhubarb),
you'll need to generate a personal access token (PAC) on [GitHub](https://github.com/settings/tokens/new) and then update the `~/.netrc` file:

```sh
echo 'machine api.github.com user mlaursen password <TOKEN>' >> ~/.netrc
```

### Random Optimizations

```bash
# Faster arrow keys in terminals
$ defaults write NSGlobalDomain KeyRepeat -int 1
$ defaults write NSGlobalDomain InitialKeyRepeat -int 10

# Show Path bar
$ defaults write com.apple.finder ShowPathbar -bool true

# Show status bar
$ defaults write com.apple.finder ShowStatusBar -bool true
```
