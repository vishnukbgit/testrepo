pwd
ls -la
docker run --rm -i -e  SNYK_TOKEN='2286d438-4472-438c-9113-d6283e2c0a48' -v ${WORKSPACE/test11}:/app snyk/snyk:alpine snyk code test --all-projects --json > snyktest.json
pwd