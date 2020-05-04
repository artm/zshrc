typeset -aHg AGNOSTER_PROMPT_SEGMENTS=(prompt_status prompt_context)
if [[ -f ~/.kube/config ]] ; then
  prompt_kube_ctx() {
    local ctx=$(awk '/current-context/{print $2;}' < ~/.kube/config)
    local bg="yellow"
    local fg="black"
    [[ $ctx = production ]] && bg="red" && fg="yellow"
    prompt_segment $bg $fg " $ctx "
  }
  AGNOSTER_PROMPT_SEGMENTS+=(prompt_kube_ctx)
fi
AGNOSTER_PROMPT_SEGMENTS+=(
  prompt_dir
  prompt_git
  prompt_end
)
