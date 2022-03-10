pipeline {
  agent {
    docker { image 'robinhoodis/sphinx-build:latest' }
  }
  stages {
    stage('build') {
      steps {
        sh 'node --version'
      }
    }
    stage('deploy') {
      steps {
        sh 'node --version'
      }
    }
  }
}
