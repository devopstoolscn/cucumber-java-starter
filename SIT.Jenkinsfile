pipeline {
    agent any
     //设置Maven环境，Maven版本为3.8.3
     tools{
        git 'Default'
        maven 'maven-3.8.3'
    }

    options { timeout(time: 1, unit: 'HOURS') }

    stages {
        stage('Pull Test Scenarios') {
            steps {
                echo '---Pull Cucumber Scripts---'
                git 'https://gitee.com/devopstools/cucumber-java-starter.git'
            }
        }
        stage('SIT') {
            steps {
                echo '---Run Cucumber Scripts---'
                sh 'mvn clean test '
            }
        }
        stage("Test Report") {
            steps {
              echo '---Generate Report---'
              cucumber failedFeaturesNumber: -1, failedScenariosNumber: -1, failedStepsNumber: -1, fileIncludePattern: '*.json', jsonReportDirectory: 'target/json-report', pendingStepsNumber: -1, reportTitle: 'Cucumber Java Starter Report', skippedStepsNumber: -1, sortingMethod: 'ALPHABETICAL', undefinedStepsNumber: -1
            }

        }
    }
}