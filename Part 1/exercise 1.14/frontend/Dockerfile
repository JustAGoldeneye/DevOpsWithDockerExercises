FROM node:16.14

WORKDIR /usr/src/

ENV REACT_APP_BACKEND_URL=http://localhost:8080

COPY package* ./

RUN npm install react-scripts

RUN npm install -g serve

COPY . .

RUN npm run build

CMD ["serve", "-s", "-l", "5000", "build"]