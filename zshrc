export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME=agnoster
EDITOR="code --wait"

plugins=(
  docker
  docker-compose
  git
  gitfast
  helm
  kubectl
)

CASE_SENSITIVE=true
DISABLE_MAGIC_FUNCTIONS=true
source $ZSH/oh-my-zsh.sh

[[ -n "$DESK_ENV" ]] && source "$DESK_ENV" || true

source ~/.aliases

AGNOSTER_PROMPT_SEGMENTS=(prompt_status prompt_kube_ctx prompt_dir prompt_git prompt_end)

prompt_kube_ctx() {
  local ctx=$(awk '/current-context/{print $2;}' < ~/.kube/config)
  local bg="yellow"
  local fg="black"
  [[ $ctx = production ]] && bg="red" && fg="yellow"
  prompt_segment $bg $fg " $ctx "
}

# Make zsh friendlier to rake arguments (rake foo[bar])
unsetopt nomatch
