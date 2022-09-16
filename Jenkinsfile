pipeline {
  agent any
  environment {
    DOCKERHUB_CREDENTIALS = credentials('divassnyk-dockerhub')
  }
  stages {
    stage('Build') {
      steps {
        sh 'docker build -t divassnyk/hello-py:latest .'
      }
    }
    stage('Login') {
      steps {
        sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'
      }
    }
    stage('Push') {
      steps {
        sh 'docker push divassnyk/hello-py:latest'
      }
    }
  }
  post {
    always {
      sh 'docker logout'
    }
  }
}
