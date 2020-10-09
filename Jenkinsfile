pipeline{
   environment {
    registry = "chinenye/test"
    registryCredential = ‘docker-hub-credentials’
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
            stage('Clone Repo'){
                steps{         
                    sh "git clone https://github.com/Chinenye-VN/project_2.git"
                    sh "cd project_2"       
                }   
            }
           stage('Building image') {
               steps{
                   script{
                     dockerImage = docker.build registry + ":$BUILD_NUMBER"
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

