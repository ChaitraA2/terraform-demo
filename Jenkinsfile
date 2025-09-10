pipeline {
  options {
    buildDiscarder(logRotator(numToKeepStr: 'S', artifactNumToKeepStr: 'S'))
  }
  agent any

  environment {
    AWS_ACCESS_KEY_ID = credentials('terraform-aws')
    AWS_SECRET_ACCESS_KEY = credentials('terraform-aws')
  }

  stages {
    stage('Terraform Vesrion') {
      steps {
        echo 'Terraform initialisation is in progress'
        sh 'terraform --version'
      }
    }
    stage('Terraform format') {
      steps {
        echo 'Terraform format is going on!'
        sh 'terraform fmt'
      }
    }
    stage('Terraform init') {
      steps {
        echo 'Terraform initialisation is going on!'
        sh 'terraform init'
      }
    }
    stage('Terraform plan') {
      steps {
        sh 'pwd'
        echo 'Terraform plan is going on!'
        sh '/usr/bin/terraform plan -out=tfplan.txt -input=false -var-file=terraform.tfvars'
      }
    }
    stage('Terraform Approval') {
      when {
        not {
          equals expected: true, actual:params.autoApprove
        }
      }
      steps {
        script {
          def plan = readfile 'tfplan.txt'
          input message: "Do you want to apply the plan?",
            parameters: [text(name: 'Plan', description: 'Please review the plan' , defaultValue:plan)]
        }
      }
    }
    stage('Terraform Apply') {
      steps {
        echo 'Terraform Apply is going on!'
        sh 'terraform apply --auto-approve'
      }
    }
  }
}
    
