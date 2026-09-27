FROM ghcr.io/puppeteer/puppeteer:21.6.0

ENV PUPPETEER_SKIP_CHROMIUM_DOWNLOAD=true
ENV PUPPETEER_EXECUTABLE_PATH=/usr/bin/google-chrome-stable

WORKDIR /app

COPY package.json .
RUN npm install --omit=dev

COPY index.js .

EXPOSE 3000

CMD ["node", "index.js"]
