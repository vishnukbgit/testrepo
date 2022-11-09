pwd
mkdir -p ${WORKSPACE}/out
chmod 777 ${WORKSPACE}/out
ls -la
docker run --rm -i -e  SNYK_TOKEN='2286d438-4472-438c-9113-d6283e2c0a48' -v ${WORKSPACE}:/app -w /app snyk/snyk:alpine pwd&&snyk code test --all-projects --json > report.json