# List of file paths to deploy
files=(
  "pipelines/docker-compose.yml"
  "RAGondin/compose_projects/chainlit_compose/docker-compose.yaml"
  "webui/docker-compose.yml"
)

# Iterate through each file and deploy it
for f in "${files[@]}"; do
  if [ -f "$f" ]; then
    echo "Shutting down $f ..."
    docker compose -f "$f" down
  else
    echo "File not found: $f"
  fi
done