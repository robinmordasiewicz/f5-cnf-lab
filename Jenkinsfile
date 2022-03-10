pipeline {
  agent {
    docker { image 'robinhoodis/sphinx-build:latest' }
  }
  stages {
    stage('make-html') {
      steps {
        sh 'make html'
      }
    }
    stage('build-nginx') {
      steps {
        sh 'ls -al'
      }
    }
  }
}
