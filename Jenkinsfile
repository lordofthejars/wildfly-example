def gradle = load 'jenkins/gradle.groovy'

node {
   stage 'Checkout'
   checkout scm

   stage 'Build'
   gradle.cleanAndCompile()

   stage 'Integration Tests'
   gradle.test()

}