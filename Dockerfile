# Use the Nginx image to serve the static HTML files
FROM nginx:alpine

# Copy the HTML files to the web server directory
COPY . /usr/share/nginx/html

# Expose port 80
EXPOSE 80
