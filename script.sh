mkdir -p ${WORKSPACE}/out
chmod 777 ${WORKSPACE}/out
SNYK_TOKEN="2286d438-4472-438c-9113-d6283e2c0a48"
#cp swagger.json ${WORKSPACE}/out/swagger.json
docker run --rm -i -e  SNYK_TOKEN='2286d438-4472-438c-9113-d6283e2c0a48' -v ${WORKSPACE}:/app snyk/snyk:alpine snyk code test --json > snykresults.json
docker build . -t snykhtml
docker run snykhtml -v ${WORKSPACE}:/app

#cp ${WORKSPACE}/out/result.json ${WORKSPACE}/testreport.json