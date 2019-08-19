## zsh

### Install

```shell
brew install zsh
chsh -s /usr/local/bin/zsh
```

```shell
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```

```shell
brew tap homebrew/cask-fonts
brew cask install font-meslo-for-powerline
```

Change font to Meslo LG L Regular for Powerline 12pt.

### Use

```shell
cp .zshrc ~/
```

This will be overwritten by `oh-my-zsh` the first time `zsh` runs but there's a backup you should put back, or just overwrite from here.

## iTerm2

Set-up to load configuration from file and point to this clone.
Restart iTerm2.
