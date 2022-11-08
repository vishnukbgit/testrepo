pipeline{
    agent any
    stages {
        stage('Test in snyk') {
            steps {
                cleanWs()
                 sh "./script.sh"
            }  
        }
        
    }
}

