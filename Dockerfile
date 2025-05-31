FROM python:3.12-alpine

WORKDIR /app

# Install system dependencies required for building packages
RUN apk add --no-cache gcc g++ musl-dev python3-dev

# Copy project files
COPY . /app

# Install Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Run the application
CMD ["python", "app.py"]
