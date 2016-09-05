node {

   stage('Checkout') {
    checkout scm
   }

   def gradle = load 'jenkins/gradle.groovy'

   stage ('Build') {
     gradle.cleanAndCompile()
   }

   stage ('Integration Tests') {
     gradle.test()
     junit '**/build/test-results/*.xml'
   }

   stage ('Create Artifacts') {
     gradle.run('wildfly-swarm-package')
     docker.build("app/wildflyexample:${env.BUILD_NUMBER}")
   }

}