# TGDC-BOT-DOCKER

This project, TGDC-BOT-DOCKER, provides a Docker setup for the [nycu-sdc](https://github.com/NYCU-SDC)/[tgdc-bot](https://github.com/NYCU-SDC/tgdc-bot) and is adaptable for most Python applications. The Docker environment is configured to run Python services from a specified directory and streamline deployment processes for developers.

## Getting Started

To set up your Python application with this Docker environment:

1. Set up your application directory: Clone your repository into an app directory, which will serve as the root of your Python service inside the Docker container.

```
git clone <your_python_application_repo_with_requirements.txt> app
```

2. Build and Start the Container: Run the following command to build the Docker image and start the container in detached mode.

```
docker compose up --build -d
```

## Notes

- Ensure your application has a requirements.txt file in the root of the app directory to install the necessary dependencies during the Docker build process.
- This setup can be easily adapted to other Python applications by following the same directory structure.

## Directory Structure

The expected structure of the directory should look like this:

```
.
├── docker-compose.yml
├── Dockerfile
└── app
    ├── requirements.txt
    ├── main.py (your python application entry point)
    └── <other_files...>
```

Commands

- Start: `docker compose up -d`
- Rebuild and Start: `docker compose up --build -d`
- Stop: `docker compose down`

This configuration provides a simple way to set up and manage Python applications in a Docker environment, with minimal effort required for installation and deployment.