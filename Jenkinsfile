pipeline {
    agent any

    stages {
        stage('Clone Repository') {
            steps {
                git 'https://github.com/mr-spacemango/2301_isa_isa'
            }
        }
        
        stage('Build Docker Image') {
            steps {
                script {
                    docker.build('2301_isa_isa:latest')
                }
            }
        }
        
        stage('Remove Existing Container') {
            steps {
                script {
                    def container = '2301_isa_isa'
                    sh "docker rm -f ${container} || true"
                }
            }
        }
        
        stage('Run Container') {
            steps {
                script {
                    docker.image('2301_isa_isa:latest').run("-d --name 2301_isa_isa -p 5000:5000")
                }
            }
        }
    }
}
