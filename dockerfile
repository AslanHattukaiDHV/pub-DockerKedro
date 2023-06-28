# Use an official Python 3.10 runtime as the base image
FROM python:3.10

# Set the working directory in the container
WORKDIR /app

# Copy the requirements.txt file into the container
COPY requirements.txt .

# Install the dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Install Kedro
RUN pip install --no-cache-dir kedro==0.18.10

# Copy the entire project into the container
COPY . .

# Set the entrypoint command to run kedro
ENTRYPOINT ["kedro"]