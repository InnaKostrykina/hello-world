pipeline {
    agent any

    stages {
        stage('Package') {
            steps {
                sh 'mvn clean package -DskipTests'
            }
        }
        stage('Create Docker Image') {
            steps {
                   sh 'docker build -t test-hello-world .'
            }
        }
        stage ('Run Application') {
            steps {
                 // Run application using Docker image
                 sh 'docker run -p 4000:8080 test-hello-world'
            }
        }
        stage('Run Test'){
            steps {
                sh 'mvn test'
            }
        }
    }
}