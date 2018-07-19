node ("ecs"){
 	// Clean workspace before doing anything
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
