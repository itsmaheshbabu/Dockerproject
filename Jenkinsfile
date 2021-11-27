pipeline{
    agent any
    stages{
        stage('git clone'){
            steps{
                git 'https://github.com/itsmaheshbabu/Dockerproject.git'
            }
        }
        stage('maven build'){
            steps{
                sh 'mvn clean package'
            }
        }
        stage('build docker image'){
            steps{
                sh 'docker image build -t mahesh91docker/java-project:1.0 .'
            }
        }
        stage('docker loginand push'){
            steps{
                withCredentials([string(credentialsId: 'docker_pwd', variable: 'docker_pwd')]) {
                    sh 'docker login -u mahesh91docker -p ${docker_pwd}'
                }
                
                sh 'docker push mahesh91docker/maven-project:2.0'
                
            }
        }
        stage('deploy application in docker container'){
            steps{
                sshagent(['dockerdeploy']) {
                    sh "ssh mahesh@10.160.0.3 docker container rm -f javaproject || true"
                    
                    sh "ssh mahesh@10.160.0.3 docker container run --name javaproject -d -P mahesh91docker/java-project:1.0"
                    
                }

            }
        }
    }
}