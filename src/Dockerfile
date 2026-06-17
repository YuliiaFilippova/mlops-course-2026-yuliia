# Use the official Python base image
FROM python:3.13-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the application code and models to the working directory
COPY app.py .
COPY models/ ./models/

# this will copy everything (like pipelines)
#COPY ..

# Copy the requirements file to the working directory
COPY requirements.txt .

# Install the Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# This will run the training process and save the model to the container
#RUN python main.py

# Run the FastAPI application using uvicorn server
CMD ["uvicorn", "app:app", "--host", "0.0.0.0", "--port", "80"]