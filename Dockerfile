# Use a minimal Linux distribution as the base image
FROM alpine:latest

# Set the working directory inside the container
WORKDIR /app

# Copy the Appwrite server binary into the container
COPY appwrite-server /app/appwrite-server

# Expose the Appwrite server's default ports (make sure they match your Appwrite server's configuration)
EXPOSE 80
EXPOSE 443

# Set the entrypoint command to start the Appwrite server
ENTRYPOINT ["/app/appwrite-server"]

# Optional: You can add any necessary environment variables here, if your Appwrite server requires them
# ENV VAR_NAME=VALUE
