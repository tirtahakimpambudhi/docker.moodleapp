# Docker MoodleApp

This project provides an example implementation of Moodle, an open-source Learning Management System (LMS), packaged in Docker containers .
## Prerequisites

Before starting, ensure you have the following software installed:

- [Docker](https://docs.docker.com/get-docker/)
- [Docker Compose](https://docs.docker.com/compose/install/)

## Installation

1. **Clone this repository:**

   ```bash
   git clone https://github.com/tirtahakimpambudhi/docker.moodleapp.git
   cd docker.moodleapp
   ```

2. **Copy the example environment configuration files:**

   ```bash
   cp .env.example.mariadb .env.mariadb
   cp .env.example.moodle .env.moodle
   ```

3. **Adjust the configuration if needed:**

   Edit the `.env.mariadb` and `.env.moodle` files to configure database passwords, usernames, and other settings as necessary.

## Usage

### Running Moodle locally with Docker Compose

1. **Build and run the containers:**

   ```bash
   docker-compose up -d
   ```

2. **Access Moodle:**

   Open your browser and go to `http://localhost:8000` to view the Moodle interface.

## Project Structure

- `.env.example.mariadb`: Example environment configuration file for MariaDB.
- `.env.example.moodle`: Example environment configuration file for Moodle.
- `docker-compose.yml`: Docker Compose configuration file to define services and container settings.
- `Dockerfile`: Dockerfile to build a custom Moodle image.

## Additional Resources

- [Moodle Official Documentation](https://moodle.org)
- [Docker Documentation](https://docs.docker.com)

## Contribution

Contributions are welcome. Please fork this repository and submit a pull request for improvements or new features.

## License

This project is licensed under the [MIT License](LICENSE.md).
