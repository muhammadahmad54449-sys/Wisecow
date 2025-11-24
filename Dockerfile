
FROM python:3.9-slim

WORKDIR /app

COPY . .

# Install dependencies and bash
RUN apt-get update && apt-get install -y bash \
    && pip install --no-cache-dir cowpy flask \
    && chmod +x wisecow.sh

EXPOSE 4499

CMD ["bash", "wisecow.sh"]
