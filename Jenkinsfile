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
 post {
    always {

      // Process the CTest xml output with the xUnit plugin
      xunit (
        testTimeMargin: '3000',
        thresholdMode: 1,
        thresholds: [
          skipped(failureThreshold: '0'),
          failed(failureThreshold: '0')
        ],
      tools: [CTest(
          pattern: 'FirstGTest/build/Testing/**/*.xml',
          deleteOutputFiles: true,
          failIfNotNew: false,
          skipNoTestFiles: true,
          stopProcessingIfError: true
        )]
      )

      // Clear the source and build dirs before next run
      //deleteDir()
    }
  }  
}