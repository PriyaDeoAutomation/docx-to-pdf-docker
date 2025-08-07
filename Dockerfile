FROM amazoncorretto:17

# Install LibreOffice
RUN yum install -y libreoffice

# Create work folders
RUN mkdir -p /app/input /app/output

WORKDIR /app

COPY convert.sh .

RUN chmod +x convert.sh

COPY input ./input

CMD ["./convert.sh"]
