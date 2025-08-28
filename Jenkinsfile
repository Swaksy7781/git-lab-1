// Jenkinsfile
pipeline {
    agent any
    tools {
        maven 'Maven'
    }
    environment {
        APP_NODE_IP = '13.49.223.252'
    }
    stages {
        stage('Checkout') {
            steps {
                echo 'Checking out code from Git...'
                git branch: 'master', url: 'https://github.com/Swaksy7781/addressbook-cicd-project.git'
            }
        }
        stage('Clean') {
            steps {
                echo 'Clean the application...'
                sh "mvn clean"
            }
        }
        stage('Test') {
            steps {
                echo 'Testing the application...'
                sh "mvn test"
            }
        }stage('Package') {
            steps {
                echo 'Packaging the application...'
                sh "mvn package"
            }
        }
        stage('Deploy') {
            steps {
                echo 'Provisioning Application Node and deploying WAR file...'
                sshagent(credentials: ['ansible-ssh-key']) {
                    
                    sh 'ansible-playbook -i ansible/inventory.ini ansible/webservers.yml'
                    
                    sh 'ansible-playbook -i ansible/inventory.ini ansible/deployment.yml'
                }
            }
        }
    }
}