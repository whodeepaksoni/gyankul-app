pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                // Pull code from GitHub (branch master)
                git branch: 'master', url: 'https://github.com/whodeepaksoni/gyankul-app'
            }
        }

        stage('Deploy') {
            steps {
                script {
                    // Path where your web server serves files
                    def webRoot = '/var/www/html'

                    // Copy index.html to web server root, replacing old file
                    sh """
                    cp -f index.html ${webRoot}/index.html
                    """
                }
            }
        }
    }

    post {
        success {
            echo "Deployment successful! index.html replaced."
        }
        failure {
            echo "Deployment failed."
        }
    }
}
