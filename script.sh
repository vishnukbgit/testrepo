docker run --rm -i -e  SNYK_TOKEN='2286d438-4472-438c-9113-d6283e2c0a48' -v ${WORKSPACE}:/app snyk/snyk:alpine snyk code test --json > snyktest.json
#docker build . -t snykhtml
#docker run --rm -i snykhtml -v ${WORKSPACE}:/app snyk-to-html -i results.json -o results.html

#cp ${WORKSPACE}/out/result.json ${WORKSPACE}/testreport.json