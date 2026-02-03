pipeline {
    agent any

    stages {
        stage('Info') {
            steps {
                echo "Branch Name: ${env.BRANCH_NAME}"
            }
        }
        stage('Build') {
            steps {
                echo "Building ....."
            }
        }
         stage('Test') {
            steps {
                echo "Testing ....."
            }
        }
         stage('Deploy') {
            when {
                branch 'main'
            }
            steps {
                echo "Deploying to PROD (main branch only)"
            }
        }
    }
}
