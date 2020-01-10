# zsh config files compatible with oh-my-zsh

## Installation

Assuming zsh and oh-my-zsh are installed already, fork or clone directly
somewhere, e.g.:

```zsh
git clone git@github.com:artm/zshrc.git
```

Enter the repository:

```zsh
cd zshrc
```

Symlink the `zshrc` as `~/.zshrc`. **Warning:** this removes any pre-existing
`~/.zshrc` and assumes oh-my-zsh was installed in the default location
(`~/.oh-my-zsh`):

```zsh
ln -sf "$(pwd)/zshrc" ~/.zshrc
```

Start a new shell: e.g. open a terminal or ssh into the host.
