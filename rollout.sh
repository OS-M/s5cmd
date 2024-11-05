echo "Building for Mac"
go build -o .build/s5cmd-macos-darwin main.go

echo "Building for Linux"
GOOS=linux GOARCH=amd64 go build -o .build/s5cmd-linux-amd64 main.go

echo "Copying the binaries"
s5cmd --profile prod-free cp --sp '.build/*' s3://quack-public/
