FROM cgr.dev/chainguard/node
ENV NODE_ENV=production
WORKDIR /app
COPY --chown=node:node package*.json ./
RUN npm install --omit=dev
COPY --chown=node:node . .
RUN chown -R node:node /app
EXPOSE 8080
USER node
HEALTHCHECK --interval=30s --timeout=10s --start-period=5s --retries=3 CMD curl -f http://localhost:8080/ || exit 1
CMD ["server.js"]
