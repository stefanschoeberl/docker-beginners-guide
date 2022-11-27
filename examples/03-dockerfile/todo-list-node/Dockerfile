FROM node:18-slim
WORKDIR /app
COPY package.json package-lock.json /app/
RUN ["npm", "ci"]
COPY src /app/src
CMD ["npm", "start"]
