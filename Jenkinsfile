pipeline {
    agent any

    stages {

        stage('Clone Repository') {
            steps {
                git branch: 'master',
                    url: 'https://github.com/whodeepaksoni/gyankul-app'
            }
        }

        stage('Remove Old index.html') {
            steps {
                sh 'sudo rm -f /var/www/html/index.html'
            }
        }

        stage('Copy New index.html') {
            steps {
                sh 'sudo cp index.html /var/www/html/index.html'
            }
        }

    }

    post {
        success {
            echo "✅ index.html replaced successfully"
        }
        failure {
            echo "❌ Deployment failed"
        }
    }
}
