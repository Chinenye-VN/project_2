pipeline{
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
        
