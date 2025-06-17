package main

import (
	"flag"
	"fmt"
	"log"
	"net"
	"net/http"
)

func getLocalIP() net.IP {
	conn, err := net.Dial("udp", "8.8.8.8:80")
	if err != nil {
		log.Fatal(err)
	}
	defer conn.Close()

	localAddress := conn.LocalAddr().(*net.UDPAddr)

	return localAddress.IP
}

func main() {
	port := flag.String("port", "8080", "port to listen on")
	name := flag.String("name", "jamiele", "name to listen on")
	flag.Parse()

	local_ip := getLocalIP()

	http.HandleFunc("/", func(w http.ResponseWriter, r *http.Request) {
		fmt.Fprintf(w, "Hello %s from server with IP: %s\n", *name, local_ip)
	})

	fmt.Printf("Starting server on port %s", *port)

	http.ListenAndServe(fmt.Sprintf(":%s", *port), nil)
}
