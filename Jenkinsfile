
pipeline {
    agent any
    environment {
        AWS_ACCESS_KEY_ID = credentials('AWS_ACCESS_KEY_ID')
        AWS_SECRET_ACCESS_KEY = credentials('AWS_SECRET_ACCESS_KEY')
        AWS_DEFAULT_REGION = "us-east-1"
    }
    stages {
        stage("Bring up my cluster") {
            steps {
                script {
                    dir('Terraform') {
                        sh "terraform init"
                        sh "terraform apply -auto-approve"
                    }
                }
            }
        }  
        stage("Run the sock shop application app") {
            steps {
                script {
                    dir('demo') {
                        sh "aws eks update-kubeconfig --region us-east-1 --name nielclust"
                        sh "kubectl apply -f manifests-monitoring"
                        sh "kubectl apply -f complete-demo.yaml"
                        sh "sleep 130s"
                        sh "kubectl get deployment -n sock-shop"
                        sh "kubectl get svc -n sock-shop"
                        sh "sleep 60s"
                        sh "kubectl get deployment -n monitoring"
                        sh "kubectl get svc -n monitoring"
                    }
                }
            }
        }
            stage("Run my web app") {
                steps {
                    script {
                        sh "aws eks update-kubeconfig --region us-east-1 --name nielclust"
                        sh "kubectl apply -f nielsweb.yaml"
                        sh "kubectl get deployment -n nweb"
                        sh "kubectl get svc -n nweb"
                    }
                }
            }
        }
    }

