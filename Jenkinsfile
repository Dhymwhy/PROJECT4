pipeline {
    agent any
    environment {
        DOCKER_IMAGE = "store/store:latest"
        DOCKER_CONTAINER = "store"
        PORT_MAPPING = "8089:80"
    }

    stages{
       stage("Clone Repository") {
            steps {
                deleteDir()
                checkout([$class: 'GitSCM', 
                          branches: [[name: '*/main']], 
                          userRemoteConfigs: [[url: 'https://github.com/Dhymwhy/PROJECT.git']]
                ])
            }
        }
        stage("build Docker Image"){
            steps{
                script{
                    docker.build(env.DOCKER_IMAGE)
                }
            }
        }
        stage("Run Docker Container"){
            steps{
                script{
                    docker.image(env.DOCKER_IMAGE).run("-d --name ${env.DOCKER_CONTAINER} -p ${env.PORT_MAPPING}")
                }
            }
        }
    }
}