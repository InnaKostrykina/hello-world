pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                bat 'mvn clean package -DskipTests'
            }
        }
        stage('Test'){
            steps {
                bat 'mvn test'
            }
        }
    }
}