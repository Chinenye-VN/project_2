pipeline{
        agent any
        stages{
            stage('SSH into Test VM'){
                steps{
                    script{    
                        sshagent(credentials : ['MyKey.pem']){
                           sh "pwd"
                           sh "cd .ssh"
                           sh "ssh -i 'MyKey.pem' ubuntu@172.31.14.11 -o (yes/no/[fingerprint])=yes"
                        }
                    }
                }
            }
            stage('Clone Repo'){
                steps{
                    sh "git clone 'https://github.com/Chinenye-VN/project_2.git'"
                    sh "cd project_2" 
                }
            }
            stage('Build Image'){
                steps{
                    sh "docker-compose up -d --build"  
                }               
            }       
        }
}        
        
