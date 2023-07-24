# Use the official Appwrite image
FROM appwrite/appwrite:1.3.8

# Copy the .env file into the container
COPY config.env /usr/src/code/appwrite/.env

# Copy the setup.sh script into the container
COPY setup.sh /usr/src/code/appwrite/setup.sh

# Set the script as the entrypoint
ENTRYPOINT ["/usr/src/code/appwrite/setup.sh"]
