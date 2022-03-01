FROM node:16-alpine
ENV DOCROOT=var/www/html
COPY package.json .
RUN npm install
COPY server.js .
ONBUILD COPY src/ ${DOCROOT}/
USER root
EXPOSE 8001
CMD ["npm", "start"]
