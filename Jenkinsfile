pipeline {
    agent { node { label 'AGENT-1' } }
    options {
        ansiColor('xterm') 
    }
    stages {
        stage('Init') {
            steps {
                sh '''
                    terraform init
                    pwd
                    ls -ltr
                '''
            }
        }
        stage('Plan') {
            steps {
                sh'''
                    terraform plan
                    ls -ltr
                    pwd
                '''
            }
        }
        stage('Approve') {
            steps{
            input "Shall I Approve?"
            }
        }
        stage('Apply') {
            steps{
             sh 'terraform apply -auto-approve'
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

