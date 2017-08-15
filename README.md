# Writing REST API with Golang

## Running Examples

```sh
go run main.go
```

## Deploy to private Docker and Kubernetes (Minikube)
```sh
go build -o my-rest.bin
docker build -t 192.168.98.100:5000/my-rest:latest .
docker push 192.168.98.100:5000/my-rest:latest

kubectl run my-rest --image=192.168.98.100:5000/my-rest:latest --port=8080
kubectl expose deployment my-rest --type=LoadBalancer
```
## Test
```sh
minikube service my-rest
```

More example at [The New Stack](http://thenewstack.io/make-a-restful-json-api-go/) article and its code repository [here](https://github.com/corylanou/tns-restful-json-api)
