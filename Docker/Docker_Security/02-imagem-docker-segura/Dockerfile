FROM node:24-alpine3.22
WORKDIR /app
COPY package*.json .
RUN npm install
COPY . .
RUN chown -R node:node /app
EXPOSE 8080
USER node
HEALTHCHECK --interval=30s --timeout=10s --start-period=5s --retries=3 CMD curl -f http://localhost:8080/ || exit 1
CMD ["node", "server.js"]
