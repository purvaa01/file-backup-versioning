pipeline {
    agent any

    stages {
        stage('checkout') {
            steps {
                checkout scm
            }
        }
        stage('prepare') {
            steps {
                sh 'chmod +x backup.sh'
            }
        }
        stage('syntax check') {
            steps {
                sh 'bash -n backup.sh'
            }
        }
        stage('run script') {
            steps {
             sh './backup.sh'
            }
        }
    }

}