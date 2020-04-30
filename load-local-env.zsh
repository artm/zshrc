ENV_D="$(pwd)/env.zsh.d"

[[ -d $ENV_D ]] && for src in ${ENV_D}/*.zsh ; do
  echo "Loading: $(basename $src)"
  . "$src"
done
