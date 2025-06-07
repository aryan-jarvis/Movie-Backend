package main

import (
    "github.com/gin-gonic/gin"
    "backend/config"
    "backend/controllers"
    "backend/middleware"
    "github.com/gin-contrib/cors"
    "time"
)

func main() {
    r := gin.Default()
    config.ConnectDB()

    // Enable CORS
    r.Use(cors.New(cors.Config{
        AllowOrigins:     []string{"http://localhost:3000"}, // React dev server
        AllowMethods:     []string{"GET", "POST", "PUT", "DELETE", "OPTIONS"},
        AllowHeaders:     []string{"Origin", "Content-Type", "Authorization"},
        ExposeHeaders:    []string{"Content-Length"},
        AllowCredentials: true,
        AllowOriginFunc: func(origin string) bool {
            return true // allow all origins (for dev only)
        },
        MaxAge: 12 * time.Hour,
    }))
    

    // Your routes...
    r.POST("/register", controllers.Register)
    r.POST("/login", controllers.Login)

    protected := r.Group("/api")
    protected.Use(middleware.JWTAuth())
    protected.GET("/profile", controllers.Profile)

    r.Run(":8080")
}
