pipeline{
    agent any
    environment{
        staging_server="142.93.212.178"
    }

    stages{
        stage('Deploy to Remote'){
            steps{
                sh 'scp ${WORKSPACE}/* root@${staging_server}:/var/www/html/testapp/'
            }
        }
    }
}