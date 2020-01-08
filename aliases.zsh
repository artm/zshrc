alias kad='docker rm -f $(docker ps -aq)'
alias watch="watch -c "
up() {
  docker-compose up -d
  docker-compose logs --timestamps --tail=20 --follow
}
alias down='docker-compose down'
alias d="docker"
alias dc="docker-compose"
alias ez="exec zsh"
