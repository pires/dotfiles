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
brew cask install font-meslo-for-powerline
```

Change font to Meslo LG L Regular for Powerline 12pt.

### Use

```shell
cp .zshrc ~/
```

This will be overwritten by `oh-my-zsh`  the first time `zsh` runs but there's a backup you should put back, or just overwrite from here.

```
brew install reattach-to-user-namespace

```shell
cd
mkdir -p .tmux/plugins
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
git clone https://github.com/gpakosz/.tmux.git
ln -s -f .tmux/.tmux.conf

cp path/to/dotfiles/.tmux.conf.local ~
```

Now, restart all your terminals.

```shell
tksv
```
