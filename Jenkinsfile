pipeline{
        agent any
        }
        stages{
            stage('Build Image'){
                steps {
                    sh "docker-compose build" ~ image = docker.build("chinenye/frontend")
                    sh "docker-compose up -d    
                   }
                }
            }
            stage('Tag & Push Image'){
                steps{
                    script{
                        if (env.rollback == 'false'){
                            docker.withRegistry('https://registry.hub.docker.com', 'docker-hub-credentials'){
                                image.push("${env.app_version}")
                            }
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
