# Use a modern Python image
FROM python:3.8-slim

# Set working directory inside the container
WORKDIR /app

# Copy project files
COPY ./ . 

# Install dependencies from docReq.txt
RUN pip install --upgrade pip \
    && pip install -r docReq.txt --no-cache-dir --timeout=600
RUN pip install --no-cache-dir protobuf==3.20.0

# Run migrations
RUN python manage.py migrate 

# Command to start the server
CMD [ "python", "manage.py", "runserver", "0.0.0.0:8000" ]
