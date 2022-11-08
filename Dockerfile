FROM node:alpine
RUN npm install snyk-to-html -g
COPY ${WORKSPACE} /app 
CMD snyk-to-html -i results.json -o results.html