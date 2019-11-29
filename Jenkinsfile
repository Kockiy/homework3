node {
  def app
  stage('Clone'){
    checkout scm
  }
  stage('Build'){
    app = docker.build("kockiy/jenkins-test:${env.BUILD_ID}")
  }
  stage('Push'){
    docker.withRegistry('','docker-hub-credentials'){
      app.push()
    }
  }  
}
