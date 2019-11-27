node {
  def app
  stage('Clone'){
    checkout scm
  }
  stage('Build'){
    app = docker.build("newubuntu:${env.BUILD_ID}")
  }
  stage('Push'){
    docker.withRegistry('kockiy/homework3','docker-hub-credentials'){
      app.push()
    }
  }  
}
