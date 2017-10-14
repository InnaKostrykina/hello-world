pipeline {
    agent any

    stages {
        stage('Package') {
            steps {
                bat 'mvn clean package -DskipTests'
            }
        }
        stage('Create Docker Image') {
            steps {
                script {
                    bat '@FOR /f "tokens=*" %i IN (^'docker-machine env --shell cmd default^') DO @%i'
                    bat '"D:/Program Files/Docker Toolbox/docker" build -t test-hello-world .'
                }
            }
        }
        stage ('Run Application') {
            steps {
                 // Run application using Docker image
                 bat 'docker run -p 4000:8080 test-hello-world'
            }
        }
        stage('Run Test'){
            steps {
                bat 'mvn test'
            }
        }
    }
}