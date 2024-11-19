FROM node:23.1.0
# Install pnpm globally
RUN npm install -g pnpm@9.4.0

# Set the working directory
WORKDIR /app
COPY . . 
# Add configuration files and install dependencies
# ADD pnpm-workspace.yaml /app/pnpm-workspace.yaml
# ADD package.json /app/package.json
# ADD .npmrc /app/.npmrc
# ADD tsconfig.json /app/tsconfig.json
# ADD pnpm-lock.yaml /app/pnpm-lock.yaml
WORKDIR /app/client
RUN pnpm i

CMD ["pnpm", "run", "dev", "-h", "eliza-web.eternalai.org"]