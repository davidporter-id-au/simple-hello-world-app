node {
 	// Clean workspace before doing anything
    deleteDir()
    agent docker

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
