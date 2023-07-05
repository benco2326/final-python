# Use the official Python image as the base image
FROM python:3.8

# Set the working directory
WORKDIR /app

# Copy your host's requirements.txt file to the /app location in the container
COPY requirements.txt .

# Install Python dependencies specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Copy your host's current directory to the /app location in the container
COPY . .

# Expose port 5000 so your application can be reached
EXPOSE 5000

# Command executed when container is running
CMD ["python", "./app.py"]
