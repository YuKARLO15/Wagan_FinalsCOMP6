# My Docker Python App

This project contains Python scripts that utilize the Webex Teams SDK and Faker library, packaged in a Docker container.

## Prerequisites

- [Docker](https://docs.docker.com/get-docker/) must be installed on your machine.

## Installation

1. **Install Docker**:
   - Follow the instructions on the official Docker website for your operating system.

2. **Clone this repository**:
   ```bash
   git clone <repository-url>
   cd my-docker-app

## Running

docker build -t my-python-app .


docker run --rm -e WEBEX_ACCESS_TOKEN=your_webex_access_token -v $(pwd)/logs:/app/logs my-python-app python webex_task.py

docker run --rm -v $(pwd)/logs:/app/logs my-python-app python faker_task.py
