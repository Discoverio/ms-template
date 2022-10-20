
# Stage 1 : Build
FROM node:18 as Build

WORKDIR /usr/src/app
COPY --chown=node:node package*.json ./
RUN npm ci

COPY ./src src
COPY tsconfig*.json ./
RUN npm run build

FROM node:18-alpine As production

WORKDIR /usr/src/app
COPY --from=development /usr/src/app/dist/ dist/
COPY --from=development /usr/src/app/node_modules/ node_modules/

CMD [ "node", "dist/main.js" ]
