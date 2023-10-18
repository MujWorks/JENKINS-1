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

                // Use 'cp' to copy files within the same machine
                sh 'cp -r ${WORKSPACE}/* /var/www/html/testapp/'
            }
        }
    }
}