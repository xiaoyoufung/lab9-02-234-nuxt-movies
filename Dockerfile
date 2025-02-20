FROM node:23-alpine

WORKDIR /app

COPY package.json pnpm-lock.yaml ./

RUN npm install -g pnpm && pnpm install

COPY . .

RUN pnpm build

EXPOSE 3000

CMD ["node", ".output/server/index.mjs"]



# COPY . .



# EXPOSE 3000

# CMD ["node", ".output"]
