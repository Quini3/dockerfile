node{
    def app
    stage('Clone') {
        checkout scm
    }
    stage('Build image') {
        app = docker.build("quiny/nginx")
    }
    stage('Test image') {
        docker.image('quiny/nginx').withRun('-p 80:80') { c ->
        sh 'docker ps'
        sh 'curl 172.31.44.193'
         }
    }
}