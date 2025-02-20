FROM node:18-alpine

WORKDIR /app

COPY .output .output
EXPOSE 3000

CMD ["node", ".output/server/index.mjs"]


# COPY package.json pnpm-lock.yaml ./

# RUN npm install -g pnpm && pnpm install

# COPY . .

# RUN pnpm build

# EXPOSE 3000

# CMD ["node", ".output"]
