# COLORS Web Application

A full-stack web application built with the LAMP stack that allows users to manage their personal collection of colors. Users can register, log in, add colors to their collection, and search through their saved colors.

## Technologies Used

- **Linux**: Ubuntu 20.04 server environment
- **Apache**: Web server
- **MySQL**: Database for storing users and colors
- **PHP**: Server-side API endpoints
- **HTML/CSS/JavaScript**: Frontend interface
- **MD5.js**: Password hashing library

## Setup Instructions

1. **Database Setup**: Import the database schema and create a MySQL user.
   ```bash
   mysql -u root -p < database/schema.sql
   mysql -u root -p
   ```
   ```sql
   CREATE USER 'YourUsername'@'localhost' IDENTIFIED BY 'YourPassword';
   GRANT ALL PRIVILEGES ON COP4331.* TO 'YourUsername'@'localhost';
   FLUSH PRIVILEGES;
   ```

2. **Configure Database Connection**: Update the connection string in all three PHP files in the `api/` directory:
   ```php
   $conn = new mysqli("localhost", "YourUsername", "YourPassword", "COP4331");
   ```

3. **Configure API URL**: Open `public/js/code.js` and update the `urlBase` variable to match your domain:
   ```javascript
   const urlBase = 'http://yourdomain.com/api';
   ```

4. **Deploy Files**: Copy the project to your web server directory (e.g., `/var/www/html/`) and ensure proper permissions.

## How to Run and Access

1. Ensure your Apache server is running and configured to serve the project directory.
2. Access the application by navigating to `http://yourdomain.com/public/index.html` in your web browser.
3. Log in using the default test credentials: Username `AYadavally`, Password `COP4331` (or `SamH` / `Test`).
4. After logging in, you can add new colors and search through your collection on the main page.

## Project Structure

```
COLORS-Lab/
├── api/                  # PHP API endpoints
│   ├── AddColor.php
│   ├── Login.php
│   └── SearchColors.php
├── database/
│   └── schema.sql        # Database schema
├── public/               # Frontend files
│   ├── index.html        # Login page
│   ├── color.html        # Main app page
│   ├── css/
│   ├── js/
│   └── images/
├── README.md
├── LICENSE.md
└── .gitignore
```

## Assumptions and Limitations

**Assumptions:**
- A properly configured LAMP stack is available
- MySQL is accessible on localhost
- PHP MySQL extensions are enabled
- Users have basic familiarity with web applications

**Limitations:**
- MD5 password hashing is used (not recommended for production; use bcrypt or Argon2 instead)
- No password recovery or email verification
- Limited input validation and error handling
- No CSRF protection or prepared statement usage in all queries
- Requires JavaScript to be enabled

**Security Note:** Before production deployment, implement HTTPS, use secure password hashing, add prepared statements to prevent SQL injection, and implement proper session management.

## AI Usage Disclosure

In accordance with class policy, Claude AI was used to help organize the GitHub repository structure, create the .gitignore file, format this README documentation, and structure the commit history to follow best practices. All original code implementation and database design were completed as part of the COLORS Lab coursework.

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details.
