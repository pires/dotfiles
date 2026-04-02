# dotfiles

Shell and terminal setup lives here. Run the commands below from this repository root. Homebrew itself must already be installed.

## Install Homebrew dependencies

Install all required formulas, casks, and fonts with a single command:

```shell
brew bundle --file Brewfile
```

To regenerate the `Brewfile` from the current Homebrew state:

```shell
brew bundle dump --brews --cask --tap --file Brewfile --force
```

## Configure zsh

Set the Homebrew `zsh` as your login shell:

```shell
ZSH_PATH="$(brew --prefix)/bin/zsh"
grep -qxF "$ZSH_PATH" /etc/shells || echo "$ZSH_PATH" | sudo tee -a /etc/shells
chsh -s "$ZSH_PATH"
```

Open a new login shell after this step for the change to take effect.

Install `oh-my-zsh`:

```shell
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

Restore the repo config after the installer writes its default `.zshrc`:

```shell
cp .zshrc ~/.zshrc
```

## Configure tmux

Clone the upstream tmux config on first setup and link the base file:

```shell
if [ ! -d ~/.tmux ]; then
  git clone https://github.com/gpakosz/.tmux.git ~/.tmux
fi
ln -sfn ~/.tmux/.tmux.conf ~/.tmux.conf
```

Copy the local overrides from this repo and install TPM:

```shell
cp .tmux.conf.local ~/.tmux.conf.local
mkdir -p ~/.tmux/plugins
if [ ! -d ~/.tmux/plugins/tpm ]; then
  git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
fi
```

The fonts needed by the zsh prompt and tmux theme are installed by the `Brewfile`.
