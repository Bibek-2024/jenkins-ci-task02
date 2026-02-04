pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo 'Running build steps...'
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
            emailext(
                to: 'yourmail@gmail.com',
                subject: "Jenkins Build #${env.BUILD_NUMBER} - ${currentBuild.currentResult}",
                body: """
Hello,

Job Name   : ${env.JOB_NAME}
Build No  : ${env.BUILD_NUMBER}
Status    : ${currentBuild.currentResult}

Build URL : ${env.BUILD_URL}

Regards,
Jenkins CI
"""
            )
        }
    }
}
