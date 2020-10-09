pipeline{
   environment {
    registry = "chinenye/test"
    registryCredential = "docker-hub-credentials"
    dockerImage = '' //saves docker image information       
   }     
        agent any
        stages{
            stage('SSH into Test VM'){
                steps{
                    script{    
                        sh '''
                        ssh ubuntu@18.134.98.11
                        '''                 
                    }
                }
            }
            stage('Clean up'){
                steps{         
                    sh "rm -rf project_2"      
                }   
            }
            stage('Clone Repo'){
                steps{         
                    sh "git clone https://github.com/Chinenye-VN/project_2.git"
                    sh "cd project_2"       
                }   
            }
           stage('Install Docker and Docker-compose'){
               steps{
                   sh '''
                   curl https://get.docker.com | sudo bash <<EOF
                   sudo usermod aG docker jenkins
                   sudo apt update
                   sudo apt install -y curl jq
                   sudo curl -L "https://github.com/docker/compose/releases/download/1.25.5/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
                   sudo chmod +x /usr/local/bin/docker-compose
EOF
                   '''
               }
           }
               
           stage('Building image') {
               steps{
                   script{
                     dockerImage = docker.build registry
                   }
               }
           }
           stage('Push Image'){
               steps{
                   script {
                     docker.withRegistry( '', registryCredential ) {
                       dockerImage.push()
                     }  
                   }
               }
           }
           stage('Deploy App'){
               steps{
                   sh "docker-compose pull && docker-compose up -d"
               }
           }
     }
}

