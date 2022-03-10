pipeline {
  agent {
    docker { image 'robinhoodis/sphinx-build:latest' }
  }
  stages {
    stage('build') {
      steps {
        sh 'make html'
      }
    }
    stage('deploy') {
      steps {
        sh 'ls -al'
      }
    }
  }
}
