# Use a base image with the necessary runtime for your app
FROM node:16-alpine
# Set up the working directory inside the container
WORKDIR /app
# Install any necessary dependencies for building the app (if required)
RUN apk add --no-cache bash
# Expose the necessary port (change according to your app's needs)
EXPOSE 3000
# Default command (this can be overridden by the CI/CD pipeline)
CMD ["node", "app.js"]
