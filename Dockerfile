FROM ubuntu:22.04

# Install required packages and LibreOffice
RUN apt-get update && \
    apt-get install -y libreoffice && \
    apt-get clean

# Set the working directory
WORKDIR /app

# Copy your local input and output folders
COPY input/ ./input/
COPY output/ ./output/
COPY convert.sh .

# Make the script executable
RUN chmod +x convert.sh

# Run the conversion script
CMD ["./convert.sh"]
