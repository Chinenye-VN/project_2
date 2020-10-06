pipeline{
        agent any
        }
        stages{
            stage('SSH into Test VM'){
                steps{
                    script{    
                        sshagent(credentials : ['MyKey.pem']){
                           sh "echo pwd"
                           sh "ssh -i 'MyKey.pem' ubuntu@xx.xxx.xx.xx -o StrictHostKeyChecking=no"
                       
                            }
                        }
                    }
                }
            }
            stage('Clone Repository'){
                steps{
                    sh "git clone https://github.com/Chinenye-VN/project_2.git"
                    sh "cd project_2"    
                }
            }
            stage('Build Image'){
                steps {
                    sh "docker-compose build" ~ image = docker.build("chinenye/frontend")"
                    sh "docker-compose up -d"  
                   }
                }
            }
            stage('Run Python Test'){
                steps{
                    script{    
                        withPythonEnv('python3') {
                             sh "pip3 install pytest"
                             sh "pytest mytest.py"
                                sh "pytest mytest.py --cov application"
                        }
                   }
                }
            }
        
}
