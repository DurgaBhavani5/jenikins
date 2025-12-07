pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/DurgaBhavani5/jenikins.git'
            }
        }

        stage('Build') {
            steps {
                echo "Build step"
            }
        }

        stage('Archive Artifact') {
             steps {
                archiveArtifacts artifacts: 'dist/**', fingerprint: true
             }
        }
        
        stage('Test') {
            steps {
                echo "Test step" 
            }
        }

        stage('Deploy') {
            steps {
                echo "Deploy step"
            }
        }
    }

    post {
        success {
            echo "Pipeline completed successfully"
        }
        failure {
            echo "Pipeline failed"
        }
    }
}
