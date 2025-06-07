package config

import (
    "log"
    "gorm.io/driver/postgres"
    "gorm.io/gorm"
    "backend/models"
)

var DB *gorm.DB

func ConnectDB() {
    dsn := "host=localhost user=goauthuser password=password dbname=auth_db port=5432 sslmode=disable"
    var err error
    DB, err = gorm.Open(postgres.Open(dsn), &gorm.Config{})
    if err != nil {
        log.Fatal("Failed to connect to database:", err)
    }

    // Run migrations
    err = DB.AutoMigrate(&models.User{})
    if err != nil {
        log.Fatal("Migration failed:", err)
    }
}
