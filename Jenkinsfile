node ("ecs"){
  withEnv(['GOPATH=' + pwd()]) {
    withDir("src/app"){
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

