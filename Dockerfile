
FROM debian:bookworm-slim

ENV DEBIAN_FRONTEND=noninteractive

 #Install all prerequisites
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        bash \
        curl \
        netcat-openbsd \
        fortune \
        cowsay && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

WORKDIR /app
COPY wisecow.sh /app/wisecow.sh
RUN chmod +x /app/wisecow.sh

EXPOSE 4499
ENTRYPOINT ["/bin/bash", "/app/wisecow.sh"]

