# COMD Management System

A web-based management system developed for the COMD department at Bilkent University using PHP and MySQL.

## Features
- User authentication and role-based access
- Admin and instructor interfaces
- Request and approval workflow
- Item and course-related management
- Dynamic content display with images

## Technologies Used
- PHP
- MySQL
- HTML
- CSS
- JavaScript

## Database Setup
Exported database file is included as `database.sql`.

## Project Structure
- `admin_main.php` – admin dashboard, user management
- `admin_item.php` – item management
- `chair_requests.php` – chair approval/request page
- `functions.php` – helper functions
- `db.php` – database connection template
- `item_images/` – uploaded item images
- `css/`, `images/`, `fonts/` – frontend assets

## Notes
- Before running the project locally, update the database credentials in `db.php`.
- Email functionality is implemented using PHPMailer; credentials are replaced with placeholders for security
- CSV upload feature allows batch insertion of items into the database


## Author
Eda Abacıoğlu
