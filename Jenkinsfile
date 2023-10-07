pipeline {
    agent { node { label 'AGENT-1' } } 

    stages {
        stage('Init') {
            steps {
                sh '''
                    terraform init
                '''
            }
        }
        stage('Plan') {
            steps {
                sh'''
                    terraform plan
                '''
            }
        }
    }
    post { 
        
        always { 
            echo 'I will always run whether job is success or not'
        }

        success { 
            echo 'I will only run when job is success'
        }
            
        failure { 
            echo 'I will run when failure'
        }
        
    }
}

