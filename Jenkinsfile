node {
	def app
	
   	stage 'Stage 1'
   		echo 'Hello there, shell scripts'
		
   	stage 'Checkout'
   		git url: 'https://github.com/nhbinh/demo.git'
		
   	stage 'Build'
   		'javac HelloWorld.java'
		app = docker.build("java8-helloworld")
	
	stage('Test image') {
        app.inside {
            sh 'echo "Tests passed"'
        }
    }
	
	stage('Push image') {
        docker.withRegistry('https://registry.hub.docker.com', 'nhbinh/java8-helloworld') {
            app.push("${env.BUILD_NUMBER}")
            app.push("latest")
        }
    }
  
}
