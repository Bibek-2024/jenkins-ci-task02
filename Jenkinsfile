pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo "Running build steps..."
                sh '''
                  echo "=============================="
                  echo " Jenkins Auto Build Triggered "
                  echo " Date: $(date)"
                  echo "=============================="
                '''
            }
        }
    }

    post {
        always {
            script {
                def buildStatus = currentBuild.currentResult
                def buildUser = currentBuild.rawBuild
                                  .getCauses()
                                  .find { it.userId != null }?.userId ?: 'GitHub User'

                emailext(
                    subject: "Pipeline ${buildStatus}: ${env.JOB_NAME} #${env.BUILD_NUMBER}",
                    body: """
                        <p>This is a Jenkins CI/CD pipeline status.</p>
                        <p><b>Project:</b> ${env.JOB_NAME}</p>
                        <p><b>Build Number:</b> ${env.BUILD_NUMBER}</p>
                        <p><b>Build Status:</b> ${buildStatus}</p>
                        <p><b>Triggered By:</b> ${buildUser}</p>
                        <p><b>Build URL:</b>
                        <a href="${env.BUILD_URL}">${env.BUILD_URL}</a></p>
                    """,
                    to: 'bibekkumarsahu2011@gmail.com',
                    from: 'bibekkumarsahu2011@gmail.com',
                    replyTo: 'bibekkumarsahu2011@gmail.com',
                    mimeType: 'text/html'
                )
            }
        }
    }
}
