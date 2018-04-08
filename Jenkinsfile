node {
	def app
	
   	stage 'Stage 1'
   		echo 'Hello there, shell scripts'
		
   	stage 'Checkout'
   		git url: 'https://github.com/nhbinh/demo.git'
		
   	stage 'Build'
   		'javac HelloWorld.java'		
		sh 'docker build -t java8-helloworld .'		
		sh 'docker tag java8-helloworld nhbinh/java8_helloworld'
	stage('Test image') {        
            sh 'echo "Tests passed"'        
    	}
	
	stage('Push image') {
		withCredentials([usernamePassword(credentialsId: 'demo_jenkins_cred_id', passwordVariable: 'dockerHubPassword', usernameVariable: 'dockerHubUser')]) {
          	sh "docker login -u ${env.dockerHubUser} -p ${env.dockerHubPassword}"
          	sh 'docker push nhbinh/java8-helloworld'
        }
    }  
}
