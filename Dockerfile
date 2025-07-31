FROM node:18-alpine
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install --production
COPY src/ ./src/
ENV PORT=3000
EXPOSE 3000
CMD ["npm", "start"]
