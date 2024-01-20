# Gunakan node image dari versi yang diinginkan
FROM node:18

# Set working directory di dalam container
WORKDIR /usr/src/app

# Salin package.json dan package-lock.json ke dalam container
COPY package*.json ./

# Install dependencies
RUN npm install

# Salin seluruh kode sumber ke dalam container
COPY . .

# Kompilasi TypeScript menjadi JavaScript
RUN npm run build

# Port yang akan digunakan oleh aplikasi Express
EXPOSE 5000

# Command untuk menjalankan aplikasi
CMD ["npm", "start"]
