pipeline{
    agent any
    stages {
        stage('Test in snyk') {
            steps {
                cleanWs()
                 sh "./script.sh"
                 sh "snyk-to-html -i snyktest.json -o snyktestresults.html"
            }  
        }
        
    }
}

