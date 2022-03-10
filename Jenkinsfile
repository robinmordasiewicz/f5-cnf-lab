pipeline {
  agent {
    docker { image 'robinhoodis/sphinx-build:latest' }
  }
  stages {
    stage('Test') {
      steps {
        sh 'node --version'
      }
    }
  }
}
