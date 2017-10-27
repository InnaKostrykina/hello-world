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
                   bat 'docker build -t test-hello-world .'
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