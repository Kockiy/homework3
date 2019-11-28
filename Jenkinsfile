node {
  def app
  stage('Clone'){
    checkout scm
  }
  stage('Build'){
    app = docker.build("newubuntu:${env.BUILD_ID}")
  }
  stage('Push'){
    docker.withRegistry('https://registry.hub.docker.com/kockiy','docker-hub-credentials'){
      app.push()
    }
  }  
}
