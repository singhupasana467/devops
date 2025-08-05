# Start from an official Python base image
FROM python:3.10-slim

# Set the working directory inside the container
WORKDIR /app

# Copy your app files into the container
COPY . .

# Install dependencies if requirements.txt exists
RUN if [ -f requirements.txt ]; then pip install --no-cache-dir -r requirements.txt; fi

# Define default command to run your app
CMD ["python", "app.py"]

