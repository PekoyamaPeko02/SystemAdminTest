# เลือก base image สำหรับ Node.js
FROM node:18-alpine

# สร้างและตั้งค่า working directory
WORKDIR /app

# คัดลอกไฟล์ package.json และ package-lock.json ไปยัง working directory
COPY package*.json ./

# ติดตั้ง dependencies
RUN npm install

# คัดลอกไฟล์ทั้งหมดไปยัง working directory
COPY . .

# กำหนดพอร์ตที่แอปจะใช้
EXPOSE 80

# รันคำสั่งเพื่อเริ่มแอปพลิเคชัน
CMD ["npm", "start"]
