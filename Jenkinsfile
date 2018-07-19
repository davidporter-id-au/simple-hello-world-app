node ("ecs"){
 
// Install the desired Go version
def root = tool name: 'Go 1.10.3', type: 'go'

 // Export environment variables pointing to the directory where Go was installed
 withEnv(["GOROOT=${root}", "PATH+GO=${root}/bin"]) {
   try {
       stage ('Clone') {
        checkout scm
       }
       stage ('Build') {
        sh "make"
       }
      stage ('Deploy') {
           sh "echo 'shell scripts to deploy to server...'"
      }
   } catch (err) {
       currentBuild.result = 'FAILED'
       throw err
   }
 }
}
