pipeline {
  agent any
  stages {
    stage('Build') {
      steps {
        bat 'FirstGTest/_Build_VS2017_Win64_NMake.bat'
      }
    }
    stage('Test') {
      steps {
        ctest(arguments: '--no-compress-output -T Test || verify > NUL', workingDir: 'FirstGTest/build', installation: 'InSearchPath')
      }
    }
  }
}