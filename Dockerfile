FROM node:alpine
RUN npm install snyk-to-html -g
COPY ${WORKSPACE} /app