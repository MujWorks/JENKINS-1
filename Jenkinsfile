pipeline{
    agent any
    environment{
        staging_server="64.227.149.44"
    }

    stages{
        stage('Deploy to Remote'){
            steps{
                sh 'scp -r ${WORKSPACE}/* root@${staging_server}:/var/www/html/testapp/'
            }
        }
    }
}