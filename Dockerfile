FROM ollama/ollama

RUN apt-get update && apt-get install -y curl

COPY ./run-ollama.sh /tmp/run-ollama.sh
COPY ./run-healthcheck.sh /tmp/run-healthcheck.sh

WORKDIR /tmp

RUN chmod +x run-ollama.sh run-healthcheck.sh

EXPOSE 11434

ENTRYPOINT [ "bash", "-c", "./run-ollama.sh"]