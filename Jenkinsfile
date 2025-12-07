pipeline {

    agent any

    environment {
        APP_NAME = "node-app"
        ENV = "dev"
    }
    stages {

        stage('Checkout Code') {
            steps {
                git branch: 'main', url: 'https://github.com/DurgaBhavani5/jenikins.git'
            }
        }

        stage('Install Dependencies') {
            steps {
                sh 'npm install'
            }
        }

        stage('Run Tests') {
            steps {
                script {
                    try {
                        sh 'npm test'
                    } catch (err) {
                        echo "❌ Tests Failed"
                        currentBuild.result = 'FAILURE'
                        throw err
                    }
                }
            }
        }

        stage('Build Project') {
            steps {
                sh 'npm run build'
            }
        }

        stage('Archive Artifact') {
            steps {
                archiveArtifacts artifacts: 'hi.txt', fingerprint: true
            }
        }
    }

    post {
        success {
            echo "🎉 Build Success for ${APP_NAME}"
        }
        failure {
            echo "❌ Build Failed for ${APP_NAME}"
        }
        always {
            echo "Cleaning workspace..."
            cleanWs()
        }
    }
}
