build: 
	@go build -o bin/$(APP_NAME) cmd/$(APP_NAME)/main.go

test:
	@go test -v ./...

run:
	@go run cmd/$(APP_NAME)/main.go

migration:
	@migrate create -ext sql -dir cmd/migrate/migrations $(filter-out $@,$(MAKECMDGOALS))

migrate-up:
	@go run cmd/migrate/main.go up

migrate-down:
	@go run cmd/migrate/main.go down