# IT0049 – TFA 2: From Arrays to a Real Database (CodeIgniter POS)

A CodeIgniter 4 POS application whose **Customer Accounts** and **User Accounts** pages
read their data from a MySQL database through Models, instead of static PHP arrays.

## Features

| Page | URL | Controller | Model | Table |
| --- | --- | --- | --- | --- |
| Customer Accounts | `/customer-accounts` | `CustomerAccounts` | `CustomerModel` | `customers` |
| User Accounts | `/user-accounts` | `UserAccounts` | `UserModel` | `users` |

Records are retrieved with the Model's Query Builder methods (`orderBy()->findAll()`), not raw SQL.

## Requirements

- PHP 8.1+ (with the `intl`, `mbstring` and `mysqli` extensions)
- MySQL / MariaDB
- Apache with `mod_rewrite` (e.g. XAMPP) or PHP's built-in server
- Composer (only if the `vendor/` folder is not included)

## Setup

1. **Place the project** in your web root (e.g. `htdocs/1t20262027/tc32/`).
2. **Install dependencies** (skip if `vendor/` is present):
   ```
   composer install
   ```
3. **Create the database and tables.** Import the provided export, which creates the `tc32`
   database, the `customers` and `users` tables, and 6 sample records in each:
   ```
   mysql -u root < tc32.sql
   ```
   or use phpMyAdmin → *Import* → choose `tc32.sql`.
4. **Configure the environment.** Copy `.env.example` to `.env` and set your values:
   ```
   app.baseURL = 'http://localhost/1t20262027/tc32/'
   database.default.hostname = localhost
   database.default.database = tc32
   database.default.username = root
   database.default.password =
   database.default.DBDriver = MySQLi
   ```
   Update `app.baseURL` to match where the app is served.

## Running

- **Apache/XAMPP:** start Apache and MySQL, then open the `app.baseURL` you configured.
- **Built-in server:** run `php spark serve` and open <http://localhost:8080>
  (set `app.baseURL = 'http://localhost:8080/'` in `.env`).

Then visit `/customer-accounts` and `/user-accounts`.

## Database schema

```sql
CREATE TABLE customers (
  id INT AUTO_INCREMENT PRIMARY KEY,
  full_name VARCHAR(100) NOT NULL,
  email VARCHAR(100) NOT NULL,
  phone VARCHAR(20),
  created_at DATETIME NOT NULL
);

CREATE TABLE users (
  id INT AUTO_INCREMENT PRIMARY KEY,
  username VARCHAR(50) NOT NULL UNIQUE,
  full_name VARCHAR(100) NOT NULL,
  created_at DATETIME NOT NULL
);
```

## Project structure (relevant files)

```
app/
  Config/Routes.php            routes for the two pages
  Controllers/CustomerAccounts.php
  Controllers/UserAccounts.php
  Models/CustomerModel.php
  Models/UserModel.php
  Views/customers/index.php
  Views/users/index.php
  Views/partials/              shared header (with nav) and footer
tc32.sql                       database export (schema + sample data)
```

## Submission

- GitHub repository: _<add link>_
- Hosted application: _<add link>_
