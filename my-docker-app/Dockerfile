# Base image - lightweight web server
FROM nginx:alpine

# Apna custom HTML copy karo
COPY index.html /usr/share/nginx/html/

# Port expose karo
EXPOSE 80

# Nginx start karo
CMD ["nginx", "-g", "daemon off;"]
