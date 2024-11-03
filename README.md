# Dockerized Ollama with Nomic Embed-Text Model

This repository contains a Docker setup for running the Ollama service, specifically utilizing the Nomic embed-text model. This setup includes health checks and ensures the Ollama server is ready before serving requests.

## Getting Started

### Prerequisites

Ensure you have the following installed on your system:

- Docker
- Docker Compose (optional, if you plan to use it)

### Setup Instructions

1. **Clone the Repository:**

   ```bash
   git clone https://github.com/Satti-Gowtham/ollama.git
   cd ollama
   
2. **Build the Docker Image:**

    Run the following command to build the Docker image:
    
    ```bash
    docker build -t ollama-nomic-embed .
    
3. **Run the Docker Container:**

    Start the container using:
    
    ```bash
    docker run -p 11434:11434 ollama-nomic-embed

## Health Check
The Docker setup includes a health check script (`run-healthcheck.sh`) that ensures the Ollama server is active before proceeding. This script will periodically check if the server is responding on the specified endpoint.

## Usage
Once the container is running, you can send requests to the Ollama API. The default endpoint is:

```bash
http://localhost:11434/api/embeddings
```

You can test the service by sending a request to generate embeddings. For example, you can use `curl`:

```bash
curl -X POST http://localhost:11434/api/embeddings -d '{ "model": "nomic-embed-text", "prompt": "Hi" }'
```

## Scripts Included
- `run-ollama.sh`: This script starts the Ollama server and pulls the Nomic embed-text model.
- `run-healthcheck.sh`: This script checks the health of the Ollama server, ensuring it's ready to accept requests.
