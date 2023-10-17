pipeline{
    agent any
    environment{
        staging_server="64.227.174.194"
    }

    stages{
        stage('Deploy to Remote'){
            steps{
                sh 'scp ${WORKSPACE}/* root@${staging_server}:/var/www/html/testapp/'
            }
        }
    }
}