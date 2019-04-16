package main

import (
	"fmt"

	"github.com/gin-gonic/gin"
)

const version = 5

func main() {
	r := gin.Default()
	r.GET("/", func(c *gin.Context) {
		c.String(200, fmt.Sprintf("Hello from NordicCoder %d", version))
	})
	r.GET("/ping", func(c *gin.Context) {
		c.JSON(200, gin.H{
			"message": "pong",
		})
	})
	r.Run() // listen and serve on 0.0.0.0:5000/8080
}
