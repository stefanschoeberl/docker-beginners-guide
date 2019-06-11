FROM node:10-slim
COPY app /app
WORKDIR /app
ENV PORT 3333
RUN ["npm", "install"]
CMD ["node", "index.js"]