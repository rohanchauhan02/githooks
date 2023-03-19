package main

import (
	"fmt"
	"net/http"
)

func main() {
	fmt.Printf("Hello World\n");

	http.HandleFunc("/", func(w http.ResponseWriter, r *http.Request) {
		fmt.Fprintf(w, "hello, %q", r.URL.Path)
	})

	http.HandleFunc("/hi", func(w http.ResponseWriter, r *http.Request) {
		fmt.Fprintf(w, "Hi")
	})

	err := http.ListenAndServe(":8080", nil)
	println(err)!
}
