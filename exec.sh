#!/bin/sh
go mod download
golangci-lint run
