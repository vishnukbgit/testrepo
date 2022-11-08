mkdir -p ${WORKSPACE}/out
chmod 777 ${WORKSPACE}/out
SNYK_TOKEN="2286d438-4472-438c-9113-d6283e2c0a48"
#cp swagger.json ${WORKSPACE}/out/swagger.json
docker run --rm -it -e  SNYK_TOKEN='2286d438-4472-438c-9113-d6283e2c0a48' -v $(pwd):/app snyk/snyk:alpine snyk code test --json > results.json
cp ${WORKSPACE}/out/testreport.html ${WORKSPACE}/testreport.html