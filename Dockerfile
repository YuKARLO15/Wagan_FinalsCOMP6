# Use a lightweight Python image
FROM python:3.9-slim

# Set a working directory in the container
WORKDIR /app

# Upgrade pip
RUN pip3 install --upgrade pip3S

# Copy requirements.txt to the working directory
COPY requirements.txt .

# Install dependencies
RUN pip3 install --no-cache-dir -r requirements.txt

# Copy the rest of the application code to the working directory
COPY . .

# Configure environment variables (these will be set at runtime)
ENV WEBEX_ACCESS_TOKEN=${WEBEX_ACCESS_TOKEN}

# Configure volumes for persistent data storage
VOLUME ["/app/logs"]

# Command to run the application (this can be overridden at runtime)
CMD ["python", "your_script.py"]