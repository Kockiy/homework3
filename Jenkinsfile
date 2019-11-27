node {
  def app
  stage('Clone'){
    checkout scm
  }
  stage('Build'){
    app = docker.build("newubuntu")
  }
  stage('Push'){
    docker.withRegistry('https://registry.hub.docker.com','docker-hub-credentials'){
      app.push()
    }
  }  
}
