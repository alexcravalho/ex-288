FROM node:16-alpine AS parent
ENV DOCROOT=${DOCROOT}
COPY package.json .
RUN npm install
COPY server.js .
ONBUILD COPY src/ ${DOCROOT}/
USER root
EXPOSE 8001
CMD ["npm", "start"]

FROM parent AS child