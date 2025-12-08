# Dockerfile
FROM node:18-alpine
WORKDIR /app

# copy package.json and package-lock.json first for caching
COPY package*.json ./

# install deps
RUN npm ci --only=production   # or npm install — npm ci is preferred when lockfile exists

# copy rest of the application
COPY . hello.txt

# build/start if needed
# RUN npm run build
CMD ["node", "index.js"]      # replace with your start command
