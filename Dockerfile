# Menggunakan base image Node.js versi 14
FROM node:14

# Menentukan working directory /app
WORKDIR /app

# Menyalin seluruh code ke working directory di container
COPY . .

# Menentukan agar aplikasi berjalan dalam production mode dan
# menggunakan container bernama item-db sebagai database host.
ENV NODE_ENV=production DB_HOST=item-db

# Menginstal dependencies untuk production dan build aplikasi
RUN npm install --production --unsafe-perm && npm run build

# Ekspos port 8080
EXPOSE 8080

# Jalankan server
CMD ["npm", "start"]