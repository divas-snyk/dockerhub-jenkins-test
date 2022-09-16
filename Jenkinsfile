pipeline {
  agent any
  environment {
    DOCKERHUB_CREDENTIALS = credentials('divassnyk-dockerhub')
  }
  stages {
    stage('Build') {
      steps {
        sh 'docker build -t divassnyk/hello-py:latest .'
        sh 'docker build -t divassnyk/hello-py:slim -f Dockerfile-2 .'
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
        sh 'docker push divassnyk/hello-py:slim'
      }
    }
    stage('Snyk Import') {
      steps {
        sh 'curl-api-call.sh'
      }
    }
  }
  post {
    always {
      sh 'docker logout'
    }
  }
}
