## zsh

### Install

```shell
brew install zsh
ZSH_PATH=/opt/homebrew/bin/zsh
echo $ZSH | sudo tee -a /etc/shells
chsh -s $ZSH
```

```shell
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```

```shell
brew cask install font-meslo-for-powerline
```

### Use

```shell
cp .zshrc ~/
```

This will be overwritten by `oh-my-zsh` the first time `zsh` runs but there's a backup you should put back, or just overwrite from here.

