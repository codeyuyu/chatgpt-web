FROM node:alpine
WORKDIR /usr/src
ENV OPENAI_API_KEY="" HTTPS_PROXY="" OPENAI_API_BASE_URL="https://api.openai.com" HEAD_SCRIPTS="" SECRET_KEY="" SITE_PASSWORD="" OPENAI_API_MODEL="gpt-3.5-turbo"
RUN npm install -g pnpm
COPY package.json pnpm-lock.yaml ./
RUN pnpm install
COPY . .
RUN pnpm run build
ENV HOST=0.0.0.0 PORT=3000 NODE_ENV=production
EXPOSE $PORT
CMD ["node", "dist/server/entry.mjs"]
