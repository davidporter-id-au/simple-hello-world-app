node ("ecs"){
  withEnv(['GOPATH=' + pwd()]) {
    sh "mkdir -p src/app"
    dir("src/app"){
      stage ('Clone') {
        checkout scm
       }
       stage ('Build') {
        sh "make"
       }
      stage ('Deploy') {
           sh "echo 'shell scripts to deploy to server...'"
      }
    }
  }
}

