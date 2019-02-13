node {
   def mvnHome
   stage('Tool Setup') { // for display purposes          
      mvnHome = tool 'mvn'
   }
   
   stage('Checkout') {
      checkout([$class: 'GitSCM', branches: [[name: '*/master']], doGenerateSubmoduleConfigurations: false, extensions: [], submoduleCfg: [], userRemoteConfigs: [[url: 'https://github.com/veersudhir83/proj1.git']]])
   }
}
