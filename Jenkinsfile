 pipeline {
    agent any
     stages {
            stage('Robot') {
            steps {
            	catchError(buildResult: 'FAILURE', stageResult: 'FAILURE') {
                	sh 'robot --variable BROWSER:headlesschrome -d RobotFW/Tester/Results RobotFW/Tester'
                }
            }
            post {
                always {
                    script {
                        step(
                            [
                                $class                  :   'RobotPublisher',
                                outputPath              :   'RobotFW/Tester/Results',
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

   /* post{
        success{
        	emailext (
            	subject: "PASSED: Job '${env.JOB_NAME} [${env.BUILD_NUMBER}]'",
                body: """<p>STARTED: Job '${env.JOB_NAME} [${env.BUILD_NUMBER}]':</p>
                		<p>Check console output at &QUOT;<a href='${env.BUILD_URL}'>${env.JOB_NAME} [${env.BUILD_NUMBER}]</a>&QUOT;</p>""",
                to: "jenkins.iths.mailer@gmail.com"
            )
        }
        failure{
        	emailext (
            	subject: "FAILED: Job '${env.JOB_NAME} [${env.BUILD_NUMBER}]'",
            	body: """<p>STARTED: Job '${env.JOB_NAME} [${env.BUILD_NUMBER}]':</p>
            			<p>Check console output at &QUOT;<a href='${env.BUILD_URL}'>${env.JOB_NAME} [${env.BUILD_NUMBER}]</a>&QUOT;</p>""",
            	to: "jenkins.iths.mailer@gmail.com"
            )

        }
    }
}
*/
