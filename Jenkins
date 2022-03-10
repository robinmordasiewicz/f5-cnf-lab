pipeline {
  agent {
    docker { image 'robinhoodi:sphinx-build' }
  }
  stages {
    stage('Test') {
      steps {
        sh 'node --version'
      }
    }
  }
}
