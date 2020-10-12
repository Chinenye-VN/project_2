pipeline{
   environment {
    app_version = "v2"
    rollback = "false"       
   }     
        agent any
        stages{
            stage('SSH into Test VM'){
                steps{
                    script{ 
                       load "/home/jenkin/.env/env_vars.groovy"
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
                   sudo curl -L "https://github.com/docker/compose/releases/download/1.25.5/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
                   sudo chmod +x /usr/local/bin/docker-compose
EOF
                   '''
               }
           }
               
           stage('Building image: Frontend') {
               steps{
                   sh '''
                   export MYSQL_ROOT_PASSWORD=${MYSQL_ROOT_PASSWORD} <<EOF
                   export DATABASE_URI=${DATABASE_URI}
                   export TEST_DATABASE_URI=${DATABASE_URI}
                   export SECRET_KEY=${SECRET_KEY}
                   docker-compose up -d
                   cd frontend/tests
                   docker-compose exec frontend pytest --cov application
                   
                   
EOF
                   '''
               }
           }
           stage('Building image: Backend') {
               steps{
                   sh '''
                   export MYSQL_ROOT_PASSWORD=${MYSQL_ROOT_PASSWORD} <<EOF
                   export DATABASE_URI=${DATABASE_URI}
                   export TEST_DATABASE_URI=${DATABASE_URI}
                   export SECRET_KEY=${SECRET_KEY}
                   docker-compose up -d
                   cd backend/tests
                   docker-compose exec backend pytest --cov application
                   
                   
EOF
                   '''
               }
           }
           

