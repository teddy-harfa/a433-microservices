#gunakan base image Node.js versi 14
FROM node:14

#tentukan folder /app sebagai working directory di container
WORKDIR /app

#copy seluruh isi source code ke working directory di container
COPY . .

#menentukan environment variable bahwa aplikasi berjalan di mode production
#dan menggunakan container item-db sebagai host database
ENV NODE_ENV=production DB_HOST=item-db

#install dependensi aplikasi, lalu build
RUN npm install --production --unsafe-perm && npm run build

#ekspos port 8080 agar bisa diakses
EXPOSE 8080

#jalankan perintah npm start saat container dijalankan agar server npm berjalan
CMD ["npm", "start"]
