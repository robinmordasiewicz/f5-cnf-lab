pipeline {
    agent none
    stages {
        stage('make-html') {
            agent {
                docker { image 'robinhoodis/sphinx-build:latest' }
            }
            steps {
                sh 'make html'
            }
        }
        stage('build-nginx') {
            agent {
                any
            }
            steps {
                sh 'node --version'
            }
        }
    }
}

