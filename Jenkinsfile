pipeline {
    agent any

    stages {

        stage('Clone Repository') {
            steps {
                git branch: 'master',
                    url: 'https://github.com/yourusername/yourrepo.git'
            }
        }

        stage('Remove Old index.html') {
            steps {
                sh '''
                if [ -f /var/www/html/index.html ]; then
                    rm -f /var/www/html/index.html
                fi
                '''
            }
        }

        stage('Copy New index.html') {
            steps {
                sh '''
                cp index.html /var/www/html/index.html
                '''
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
