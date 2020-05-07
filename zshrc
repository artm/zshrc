export ZSH="$HOME/.oh-my-zsh"
export ZSH_CUSTOM="$(dirname $(readlink ~/.zshrc))"

plugins=(
  ansible
  docker
  docker-compose
  git
  gitfast
  helm
  kubectl
  terraform
)

source $ZSH/oh-my-zsh.sh
