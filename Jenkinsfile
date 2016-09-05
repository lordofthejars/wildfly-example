node {

   stage 'Checkout'
   checkout scm


   def gradle = load 'jenkins/gradle.groovy'

   stage 'Build'
   gradle.cleanAndCompile()


   stage 'Integration Tests'
   gradle.test()
   junit '**/build/test-results/*.xml'

   stage 'Create Artifacts'
   gradle.assembleApplication()
   docker.build("app/wildflyexample:${env.BUILD_NUMBER}")


}