package main

func main() {
	a := App{}
	a.Initialize(DBUser, DBPassword, DBName)

	a.Run(":8010")
}
