pipeline {
    agent any

    stages {
        stage('SCM') {
            steps {
                git branch: 'main', url: 'https://github.com/Rajareddy9704/hello-terraform.git'
            }
        }

        stage('Build') {
            steps {
                sh "mvn clean package"
            }
        }

        stage('Terraform Init') {
            steps {
                sh 'terraform init'
            }
        }
        stage('Terraform validate') {
            steps {
                sh 'terraform validate'
            }
        }

        stage('Terraform Plan') {
            steps {
                sh 'terraform plan'
            }
        }

        stage('Terraform Apply') {
            steps {
                sh 'terraform apply -auto-approve'
            }
        }
        stage("deploy"){
            steps {
                sshagent(['tomcat-deploy']) {
                 sh "scp -o StrictHostKeyChecking=no target/warfilename Tomcat_User@Tomcat_privateip:/opt/tomcat9/webapps/"
                 sh "ssh Tomcat_User@Tomcat_privateIp /opt/tomcat9/bin/shutdown.sh"
                 sh "ssh Tomcat_User@Tomcat_privateIp /opt/tomcat9/bin/startup.sh"
                }
            }
        }    
    }
}
