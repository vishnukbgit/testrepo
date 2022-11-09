pipeline{
    agent any
    stages {
        stage('Test in snyk') {
            steps {
                 //sh "./script.sh"
                // sh "snyk-to-html -i snyktest.json -o snyktestresults.html"
                sh "docker run --rm -i -e  SNYK_TOKEN='2286d438-4472-438c-9113-d6283e2c0a48' -v `pwd`:/app -w /app/culturebie_csv_downloader snyk/snyk:alpine snyk code test --json > report.json"
            }  
        }
        
    }
}

