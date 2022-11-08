pipeline{
    agent any
    stages {
        stage('Test in snyk') {
            steps {
                 sh "./script.sh"
                // sh "snyk-to-html -i snyktest.json -o snyktestresults.html"
            }  
        }
        
    }
}

