pipeline {
    agent any

    stages {

        stage('Git Clone') {
            steps {
                git branch: 'master',
                url: 'https://github.com/whodeepaksoni/gyankul-app'
            }
        }

        stage('Docker Build') {
            steps {
                sh 'docker build -t my-apache-app .'
            }
        }

        stage('Docker Run') {
            steps {
                sh '''
                docker rm -f apache_container || true
                docker run -d \
                --name apache_container \
                -p 8081:80 \
                my-apache-app
                '''
            }
        }
    }
}
 