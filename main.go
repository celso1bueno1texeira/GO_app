package main

func main() {
	http.HandleFunc("/", func(w http.ResponseWrinter, r *http.Request)){
		w.Write([]byte("Hello World!!!"))
	}

	http.ListenAndServer(":80809", nil)