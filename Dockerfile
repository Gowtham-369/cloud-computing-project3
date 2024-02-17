# Use Alpine Linux as the base image
FROM alpine:latest

# Install Python 3, pip for Python 3, and iproute2
RUN apk update && \
    apk add --no-cache python3 py3-pip iproute2
    
WORKDIR /app

COPY script.py /app/
COPY IF.txt /home/data/
COPY Limerick-1.txt /home/data/

# Copy the entrypoint script into the container
# COPY entrypoint.sh /app/entrypoint.sh

# Make the entrypoint script executable
# RUN chmod +x /app/entrypoint.sh

# Set the entrypoint script as the entrypoint for the container
# ENTRYPOINT ["/app/entrypoint.sh"]

CMD ["python3", "script.py"]