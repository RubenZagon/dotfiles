function docker_prune() {
    docker stop $(docker ps -a -q)
    yes | docker system prune -a
}