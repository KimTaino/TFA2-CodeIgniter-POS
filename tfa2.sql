-- IT0049 TFA2 - From Arrays to a Real Database (CodeIgniter POS)
-- Database export: schema + sample data
-- Import with:  mysql -u root < tc32.sql   (or via phpMyAdmin > Import)

CREATE DATABASE IF NOT EXISTS `tc32` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `tc32`;

SET NAMES utf8mb4;

-- --------------------------------------------------------
-- Table: customers
-- --------------------------------------------------------
DROP TABLE IF EXISTS `customers`;
CREATE TABLE customers (
  id INT AUTO_INCREMENT PRIMARY KEY,
  full_name VARCHAR(100) NOT NULL,
  email VARCHAR(100) NOT NULL,
  phone VARCHAR(20),
  created_at DATETIME NOT NULL
);

INSERT INTO customers (full_name, email, phone, created_at) VALUES
('Maria Santos',     'maria.santos@example.com',     '0917-123-4567', '2026-09-01 09:15:00'),
('Juan Dela Cruz',   'juan.delacruz@example.com',    '0918-234-5678', '2026-09-03 10:30:00'),
('Ana Reyes',        'ana.reyes@example.com',        '0920-345-6789', '2026-09-05 13:45:00'),
('Carlos Mendoza',   'carlos.mendoza@example.com',   '0921-456-7890', '2026-09-08 11:20:00'),
('Liza Garcia',      'liza.garcia@example.com',      '0922-567-8901', '2026-09-10 15:05:00'),
('Miguel Bautista',  'miguel.bautista@example.com',  NULL,            '2026-09-12 16:40:00');

-- --------------------------------------------------------
-- Table: users
-- --------------------------------------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE users (
  id INT AUTO_INCREMENT PRIMARY KEY,
  username VARCHAR(50) NOT NULL UNIQUE,
  full_name VARCHAR(100) NOT NULL,
  created_at DATETIME NOT NULL
);

INSERT INTO users (username, full_name, created_at) VALUES
('admin',     'System Administrator', '2026-08-28 08:00:00'),
('mmanager',  'Rosa Manalo',          '2026-08-28 08:30:00'),
('cashier01', 'Paolo Villanueva',     '2026-08-29 09:00:00'),
('cashier02', 'Jessa Ramos',          '2026-08-29 09:10:00'),
('stockroom', 'Edgar Navarro',        '2026-08-30 10:00:00'),
('auditor',   'Grace Tolentino',      '2026-08-31 14:00:00');
