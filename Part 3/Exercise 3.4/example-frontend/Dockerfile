FROM ubuntu:18.04

WORKDIR /usr/src/

ENV REACT_APP_BACKEND_URL=http://localhost/api/

COPY . .

RUN apt-get update && apt update && \
    apt-get install -y curl && \
    curl -sL https://deb.nodesource.com/setup_14.x | bash - && \
    cat /etc/apt/sources.list.d/nodesource.list && \
    apt -y install nodejs && \
    npm install react-scripts && \
    npm install -g serve && \
    npm run build && \
    apt-get purge -y --auto-remove curl && \
    rm -rf /var/lib/apt/lists/* &&\
    useradd -m appuser

USER appuser

CMD ["serve", "-s", "-l", "5000", "build"]