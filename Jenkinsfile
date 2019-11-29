pipeline {
  def app
  stage('Clone'){
    checkout scm
  }
  stage('Build'){
    app = docker.build kockiy/jenkins-test + ":$BUILD_NUMBER"
  }
  stage('Push'){
    docker.withRegistry('https://registry.hub.docker.com/kockiy','docker-hub-credentials'){
      app.push()
    }
  }  
}
