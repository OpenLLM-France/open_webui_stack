# Check if the network already exists
NETWORK=webui_stack_network
STACK_NAME=webui

if docker network inspect "$NETWORK" >/dev/null 2>&1; then
    echo "Network '$NETWORK' already exists. Skipping."
else
    docker network create \
        -d bridge \
        "$NETWORK"
    echo "Network '$NETWORK' created."
fi



# List of file paths to deploy
files=(
  "pipelines/docker-compose.yml"
  "RAGondin/compose_projects/chainlit_compose/docker-compose.yaml"
  "webui/docker-compose.yml"
)

# Iterate through each file and deploy it
for f in "${files[@]}"; do
  if [ -f "$f" ]; then
    echo "Deploying $f ..."
    docker compose -f "$f" up -d
  else
    echo "File not found: $f"
  fi
done
