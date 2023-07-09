pipeline {
  agent any
  stages {
    stage('stage01') {
      steps {
        sh 'echo "Stage01"'
      }
    }

    stage('stage02') {
      steps {
        sh 'echo "stage02"'
        node(label: 'EC2_NODE')
      }
    }

  }
}