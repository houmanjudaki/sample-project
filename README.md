
```
```
# Nginx Docker Project

## Introduction
This project sets up an Nginx server using Docker with the following features:
- Serves a static page on `/local` with Basic Authentication.
- Redirects `/net` to Google's homepage.
- Security configurations including hiding Nginx version, enabling XSS protection, and disabling MIME sniffing.

## Project Structure
```
project/
├── docker-compose.yml
├── nginx/
│   ├── Dockerfile
│   ├── nginx.conf
│   ├── html/
│   │   └── index.html
│   └── .htpasswd
├── scripts/
│   ├── setup.sh
│   └── renew_ssl.sh
└── README.md
```

## Setup Instructions
1. Clone the repository:
   ```bash
   git clone https://github.com/your-repo/project.git
   cd project
   ```

2. Create the `.htpasswd` file for Basic Authentication:
   - Install `apache2-utils` if not already installed:
     ```bash
     sudo apt-get install apache2-utils
     ```
   - Create the `.htpasswd` file and add a user:
     ```bash
     sudo htpasswd -c nginx/.htpasswd username
     ```
     Replace `username` with your desired username. You will be prompted to enter and confirm a password.

3. Run the setup script:
   ```bash
   ./scripts/setup.sh
   ```

4. Access the local page at `http://localhost:8090/local` with the credentials set in `.htpasswd`.

5. Access the redirect at `http://localhost:8008/net`.

## SSL Renewal
To renew SSL certificates, add the following cron job:
```bash
30 2 * * * /path/to/project/scripts/renew_ssl.sh
```
```

