node {
	def app
	
   	stage 'Stage 1'
   		echo 'Hello there, shell scripts'
		
   	stage 'Checkout'
   		git url: 'https://github.com/nhbinh/demo.git'
		
   	stage 'Build'
   		sh 'javac HelloWorld.java'
		sh 'ls'
		sh 'docker build -t java8-helloworld .'		
		sh 'docker tag java8-helloworld nhbinh/java8-helloworld:1'
	stage('Test image') {
            sh 'docker run nhbinh/java8-helloworld'
    	}
	
	stage('Push image') {
		withCredentials([usernamePassword(credentialsId: 'demo_jenkins_cred_id', passwordVariable: 'dockerHubPassword', usernameVariable: 'dockerHubUser')]) {
          	sh "docker login -u ${env.dockerHubUser} -p ${env.dockerHubPassword}"
          	sh 'docker push nhbinh/java8-helloworld'
        }
    }  
}
