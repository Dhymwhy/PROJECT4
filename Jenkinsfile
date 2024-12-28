pipeline {
    agent any
    stages {
        stage('Checkout') {
            steps {
                git 'https://github.com/naraaalt/devopstest'
            }
        }
        stage('Build Docker Image') {
            steps {
                script {
                    sh 'docker build -t my-html-project .'
                }
            }
        }
        stage('Run Docker Container') {
            steps {
                script {
                    sh 'docker run -d -p 8081:80 -v $(pwd):/usr/share/nginx/html my-html-project'
                }
            }
        }
    }
}
