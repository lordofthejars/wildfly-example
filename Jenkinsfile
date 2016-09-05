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
   }

}