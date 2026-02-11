-- Complete database import with foreign key fix
SET FOREIGN_KEY_CHECKS = 0;
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

-- Drop and recreate database
DROP DATABASE IF EXISTS admin_placement_db;
CREATE DATABASE admin_placement_db CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE admin_placement_db;

-- IMPORTANT: After running this, import your admin_placement_db.sql file
-- Then run the cleanup below

-- This will be run AFTER your SQL file imports
-- Keep foreign keys disabled throughout
