FROM ubuntu:24.04

RUN apt-get update && apt-get install -y \
    blender \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app

COPY . .

CMD ["tail", "-f", "/dev/null"]