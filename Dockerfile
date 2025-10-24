# Dùng image Nginx chính thức
FROM nginx:latest

# Xóa nội dung mặc định của Nginx
RUN rm -rf /usr/share/nginx/html/*

# Copy các file web vào thư mục phục vụ web của Nginx
COPY Exercise1.html /usr/share/nginx/html/index.html
COPY style1.css /usr/share/nginx/html/style1.css
COPY ava.jpg /usr/share/nginx/html/ava.jpg

# Mở cổng 80
EXPOSE 80

# Khởi động Nginx
CMD ["nginx", "-g", "daemon off;"]
