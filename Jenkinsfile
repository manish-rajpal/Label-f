pipeline {
   agent any
        stages {
            stage(repo){
                steps{
               git 'https://github.com/manish-rajpal/Label-f'
                 }
            }
     
        stage ('Build') {
              steps {
                     bat "mvn compile"
                }
            }
        stage('Robot') {
            steps {
                bat 'robot --variable BROWSER:headlesschrome -d Results Tests'
            }
            post {
                always {
                    script {
                        step(
                            [
                                $class                  :   'RobotPublisher',
                                outputPath              :   'Results',
                                outputFileName          :   '**/output.xml',
                                reportFileName          :   '**/report.html',
                                logFileName             :   '**/log.html',
                                disableArchiveOutput    :   false,
                                passThreshold           :   50,
                                unstableThreshold       :   40,
                                otherFiles              :   "**/*.png,**/*.jpg",
                            ]
                        )
                    }
                }
            }
                 
        }
}
}
