# Start with a lightweight Alpine Linux base image with Nginx
FROM nginx:alpine

# Copy the index.html file to the default Nginx directory
COPY index.html /usr/share/nginx/html/index.html

# Expose port 80 for the web server
EXPOSE 80

# Start Nginx in the foreground to keep the container running
CMD ["nginx", "-g", "daemon off;"]
