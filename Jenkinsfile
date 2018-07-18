node ("ecs"){
 	// Clean workspace before doing anything
    try {
        stage ('Clone') {
        	checkout scm
        }
        stage ('Build') {
         // test build isolation
         sh "ls -lha"
         sh "ls /tmp -lha"
         sh "touch /tmp/some-temporary-file"
         sh "touch some-temporary-file"
         
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
