# DockerWhoamiID

DockerWhoamiID is a simple Go application within a Docker container designed to check and display the container ID.

## Getting Started

### Prerequisites

- Docker installed on your machine

### Build and Run

1. Clone the repository:

   ```bash
   git clone https://github.com/your-username/DockerWhoamiID.git
   ```
2. Build the Docker image:
   ```bash
   docker build -t dockerwhoamiid .
   ```
3. Run the Docker container:
   ```bash
   docker run -p 8000:8000 dockerwhoamiid
   ```
The application will be accessible at http://localhost:8000.

## Dockerfile

The Dockerfile defines the build process for the application. It uses a multi-stage build, first building the Go binary and then creating a lightweight image to run the application.

## http.go

The `http.go` file contains the Go source code for the simple application. It listens on a specified port and responds with the container's hostname.

## whoami@.service

The `whoami@.service` file is a systemd service unit for running the Docker container as a service.

## License

This project is licensed under the [MIT License](https://opensource.org/licenses/MIT).

## Contribution

Feel free to contribute by opening issues or pull requests. Your feedback and improvements are highly appreciated!
