FROM node
WORKDIR /app

COPY . .
EXPOSE 3000

COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

EXPOSE 3000

CMD ["npm", "start"]
