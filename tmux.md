## tmux

```shell
brew install tmux reattach-to-user-namespace
```

```shell
brew tap homebrew/cask-fonts
brew cask install font-meslo-for-powerline
```

```shell
git clone https://github.com/gpakosz/.tmux.git ~/.tmux
ln -s -f ~/.tmux/.tmux.conf ~/.tmux.conf

cp path/to/dotfiles/.tmux.conf.local ~

mkdir -p ~/.tmux/plugins
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```

```shell
tksv
```
