build:
	go build -o ./bin/server ./cmd/server/main.go

dockerize:
	docker build --tag simple-go-k8s-backend:latest --file ./deployment/app.Dockerfile .

publish:
	eval $$(minikube docker-env)
	minikube cache add simple-go-k8s-backend:latest

# Only use this in local mode
clean-up-minikube:
	minkube delete
