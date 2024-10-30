# ใช้ Node.js เวอร์ชันใหม่ที่รองรับ syntax
FROM node:16

# ตั้งค่า working directory
WORKDIR /app

# คัดลอก package.json และ package-lock.json
COPY package*.json ./

# ติดตั้ง dependencies
RUN npm install --production

# คัดลอกไฟล์ทั้งหมดไปยัง container
COPY . .

# สร้างแอปพลิเคชัน
RUN npm run build

# ตั้งค่าให้เปิด port 80
EXPOSE 80

# รันแอปพลิเคชัน
CMD ["npm", "start"]
