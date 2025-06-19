# Use a minimal Python image
FROM python:3.12-slim

# Set working directory inside container
WORKDIR /app

# Copy only dependencies first for faster rebuilds
COPY requirements.txt .

# Install Python packages
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the project files
COPY . .

# (Later) define how to run your pipeline, e.g.:
# ENTRYPOINT ["python", "scripts/inspect_data.py"]