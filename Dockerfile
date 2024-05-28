FROM fholzer/nginx-brotli:latest

# Copy HTML files
COPY html /usr/share/nginx/html

# Copy Nginx configuration
COPY nginx.conf /etc/nginx/nginx.conf

# Copy the entrypoint script
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

# Expose port 8081
EXPOSE 8081

# Use the entrypoint script to start Nginx
ENTRYPOINT ["/entrypoint.sh"]
