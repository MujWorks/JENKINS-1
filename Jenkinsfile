pipeline {
    agent any
    environment {
        remoteServer = "159.223.136.0"
        remoteUser = "root"
        remotePassword = "aDmin@123a"
        remoteDir = "/var/www/html/testapp/"
    }
    stages {
        stage('Deploy PHP Application') {
            steps {
                script {
                    // Create the remote directory if it doesn't exist
                    sh "sshpass -p ${remotePassword} ssh ${remoteUser}@${remoteServer} mkdir -p ${remoteDir}"

                    // Copy the files to the remote server
                    sh "sshpass -p ${remotePassword} scp -r ${WORKSPACE}/* ${remoteUser}@${remoteServer}:${remoteDir}"

                    // Set permissions for the remote user
                    sh "sshpass -p ${remotePassword} ssh ${remoteUser}@${remoteServer} chown -R ${remoteUser}:${remoteUser} ${remoteDir}"
                    sh "sshpass -p ${remotePassword} ssh ${remoteUser}@${remoteServer} chmod -R 755 ${remoteDir}"
                }
            }
        }
    }
}
