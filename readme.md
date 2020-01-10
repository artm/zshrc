# zsh config files compatible with oh-my-zsh

## Installation

Assuming [zsh][zsh] and [oh-my-zsh][omz] are installed already (see [oh-my-zsh
installation instructions][omzi]), fork or clone directly somewhere, e.g.:

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

[zsh]: https://www.zsh.org/
[omz]: https://ohmyz.sh/
[omzi]: https://github.com/ohmyzsh/ohmyzsh/wiki/Installing-ZSH
