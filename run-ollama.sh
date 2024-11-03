#!/bin/bash

ollama serve > /dev/null 2>&1 &

echo "Waiting for Ollama server to be active..."
while [ "$(ollama list | grep 'NAME')" == "" ]; do
  sleep 1
done


ollama pull nomic-embed-text
tail -f /dev/null