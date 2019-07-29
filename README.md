## zsh

### Install

```shell
brew install zsh tmux
chsh -s /usr/local/bin/zsh
```

```shell
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```

### iTerm2

```shell
brew tap homebrew/cask-fonts
brew cask install font-menlo-for-powerline
```

Change font to Menlo 12pt.

### Use

```shell
cp .zshrc ~/
```

This will be overwritten by `oh-my-zsh`  the first time `zsh` runs but there's a backup you should put back, or just overwrite from here.

```shell
cp .tmux/.tmux.conf .
```

Now, restart all your terminals.
