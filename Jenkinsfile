pipeline {
   agent any
   // triggers
   // {
   //     gitlab(
   //     triggerOnPush: true,
   //     triggerOnMergeRequest: true,
   //     branchFilterType: 'All',
   //     addVoteOnMergeRequest: true
   //     )
   // }
   stages {
       stage('Build and Tag'){
           steps{
            sh '''
                docker build -t echoapp .
                bash CI/tag.bash
            '''
           }
       }
       stage('Deploy'){
           steps{
               sh 'bash CI/deploy.bash'
           }
       }
   }
}