FROM docker:git

WORKDIR /mydir

COPY RepoDockerPublisher.sh .

COPY gh_owner.txt .

COPY gh_repo.txt .

COPY dc_user.txt .

COPY dc_password.txt .

COPY dc_repo.txt .

CMD ./RepoDockerPublisher.sh