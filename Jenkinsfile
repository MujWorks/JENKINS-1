pipeline{
    agent any
    environment{
        staging_server="159.223.136.0"
    }

    stages{
        stage('Deploy to Remote'){
            steps{
                // For DIfferent machine
                //sh 'scp -r ${WORKSPACE}/* root@${staging_server}:/var/www/html/testapp/'

                script {
                    def remoteDir = "/var/www/html/testapp/"
                    
                        //  create directory
                        sh "sudo mkdir -p ${remoteDir}"
                    
                    
                    // Now, copy the files
                    sh "sudo cp -r ${WORKSPACE}/* ${remoteDir}"

                    // Set permissions for the Jenkins user
                    sh "sudo chown -R jenkins:jenkins ${remoteDir}"
                    sh "sudo chmod -R 755 ${remoteDir}"
                }
            }
        }
    }
}