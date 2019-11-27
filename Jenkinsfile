de {
  def app
  stage('Clone'){
    checkout scm
  }
  stage('Build'){
    app = docker.build("newubuntu:${env.BUILD_ID}")
  }
  stage('Push'){
    docker.withRegistry('kockiy',docker-hub-credentials'){
      app.push()
    }
  }  
}
