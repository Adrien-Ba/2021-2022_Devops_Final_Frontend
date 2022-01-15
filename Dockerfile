FROM node:14.15.0

WORKDIR /repo

COPY . /repo

RUN yarn install

RUN yarn build

ENTRYPOINT [ "yarn", "start:prod" ]