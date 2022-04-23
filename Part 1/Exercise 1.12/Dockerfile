FROM node:16.14

WORKDIR /usr/src/

COPY package* ./

RUN npm install react-scripts

RUN npm install -g serve

COPY . .

RUN npm run build

CMD ["serve", "-s", "-l", "5000", "build"]