#!/bin/bash

packages=(
    "go.uber.org/nilaway/cmd/nilaway@latest"
    "github.com/air-verse/air@latest"
    "github.com/golangci/golangci-lint/cmd/golangci-lint@latest"
    "github.com/segmentio/golines@latest"
    "github.com/sqlc-dev/sqlc/cmd/sqlc@latest"
    "github.com/swaggo/swag/cmd/swag@latest"
)

echo "Updating Go packages..."

for package in "${packages[@]}"; do
    echo "Updating $package..."
    go install "$package"
done

echo "All packages have been updated successfully."

