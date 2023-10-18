pipeline{
    agent any
    environment{
        staging_server="64.227.149.44"
    }

    stages{
        stage('Deploy to Remote'){
            steps{
                // For DIfferent machine
                //sh 'scp -r ${WORKSPACE}/* root@${staging_server}:/var/www/html/testapp/'

                script {
                    def remoteDir = "/var/www/html/testapp/"
                    
                    // Check if the directory exists
                    def dirExists = sh(script: "[ -d ${remoteDir} ] && echo 'true' || echo 'false'", returnStatus: true).trim()
                    
                    if (dirExists == "false") {
                        // Directory doesn't exist, create it
                        sh "mkdir -p ${remoteDir}"
                    }
                    
                    // Now, copy the files
                    sh "cp -r ${WORKSPACE}/* ${remoteDir}"
                }
            }
        }
    }
}