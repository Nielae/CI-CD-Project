pipeline {
    agent any

    stages {
        stage('plan') {
            steps {
                echo 'I am doing terraform plan and init'
            }
        }
        
        stage('apply') {
            steps {
                echo 'terraform apply with auto approve'
            }
        }
    }
}
