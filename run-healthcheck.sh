#!/bin/bash

echo "Sending a request to ollama"

while [ "$(curl -s -o /dev/null -w "%{http_code}" http://localhost:11434/api/embeddings -d '{ "model": "nomic-embed-text", "prompt": "Hi" }')" != "200" ]; do
    sleep 1
done
