package main

import "github.com/croko22/go-api/cmd/api"

func main() {
	server := api.NewAPIServer(":8080", nil)
	if err := server.Run(); err != nil {
		panic(err)
	}
}
