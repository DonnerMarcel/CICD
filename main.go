package main

import (
	"os"
)

func main() {
	DBUser := os.Getenv("DB_USER")
	DBPassword := os.Getenv("DB_PASSWORD")
	DBName := os.Getenv("DB_NAME")

	a := App{}
	a.Initialize(DBUser, DBPassword, DBName)

	a.Run(":8010")
}
