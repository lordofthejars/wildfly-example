
def gradle;
node {
   gradle = load 'jenkins/gradle.groovy'

   stage 'Checkout'
   checkout scm

   stage 'Build'
   gradle.cleanAndCompile()

   stage 'Integration Tests'
   gradle.test()

}