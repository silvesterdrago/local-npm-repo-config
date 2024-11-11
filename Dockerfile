# Use the official Verdaccio image
FROM verdaccio/verdaccio

# Copy configuration (optional)
COPY config.yaml /verdaccio/conf/config.yaml

# Expose the port Verdaccio listens on
EXPOSE 4873

# Start Verdaccio
CMD ["verdaccio"]
