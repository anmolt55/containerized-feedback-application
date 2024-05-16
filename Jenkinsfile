// authored by : Anmol Tripathi, atripat8@gmu.edu
pipeline{
    agent any
    environment{
        DOCKERHUB_PASS = credentials('password_docker')
    }
    stages{
        stage("Checkout"){
            steps{
                checkout scm
                sh 'ls -al'
                sh 'pwd'
                sh 'cd StudentSurvery/src/main/webapp && jar -cvf studentform.war *'
                sh("sudo -S docker build --tag mpremashish1/student-survey:${BUILD_TIMESTAMP} .")
                sh("echo ${BUILD_TIMESTAMP}")
                sh('sudo docker login -u mpremashish1 -p \"${DOCKERHUB_PASS}\"')
            }   
        }
        stage("Push docker image"){
            steps{
                sh("sudo docker push mpremashish1/student-survey:${BUILD_TIMESTAMP}")
            }
        }
        stage("Deploy docker image to rancher cluster with 3 pod using nodeport"){
            steps{
                sh("kubectl set image deployment/studentsurveydep container-0=mpremashish1/student-survey:${BUILD_TIMESTAMP} -n surveyui")
            }
        }
    }
}
