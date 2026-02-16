-- COLORS Application Database Schema
-- COP 4331 LAMP Stack Project

-- Create the database
CREATE DATABASE IF NOT EXISTS COP4331;
USE COP4331;

-- Users Table: Stores user account information
CREATE TABLE IF NOT EXISTS `Users` (
    `ID` INT NOT NULL AUTO_INCREMENT,
    `FirstName` VARCHAR(50) NOT NULL DEFAULT '',
    `LastName` VARCHAR(50) NOT NULL DEFAULT '',
    `Login` VARCHAR(50) NOT NULL DEFAULT '',
    `Password` VARCHAR(50) NOT NULL DEFAULT '',
    PRIMARY KEY (`ID`)
) ENGINE = InnoDB;

-- Colors Table: Stores color entries linked to users
CREATE TABLE IF NOT EXISTS `Colors` (
    `ID` INT NOT NULL AUTO_INCREMENT,
    `Name` VARCHAR(50) NOT NULL DEFAULT '',
    `UserID` INT NOT NULL DEFAULT '0',
    PRIMARY KEY (`ID`)
) ENGINE = InnoDB;

-- Contacts Table: Stores contact information linked to users
CREATE TABLE IF NOT EXISTS `Contacts` (
    `ID` INT NOT NULL AUTO_INCREMENT,
    `FirstName` VARCHAR(50) NOT NULL DEFAULT '',
    `LastName` VARCHAR(50) NOT NULL DEFAULT '',
    `Phone` VARCHAR(50) NOT NULL DEFAULT '',
    `Email` VARCHAR(50) NOT NULL DEFAULT '',
    `UserID` INT NOT NULL DEFAULT '0',
    PRIMARY KEY (`ID`)
) ENGINE = InnoDB;

-- Insert sample users (with MD5 hashed passwords)
-- User 1: Login=AYadavally, Password=COP4331 (hashed)
INSERT INTO Users (FirstName, LastName, Login, Password) 
VALUES ('Aashish', 'Yadavally', 'AYadavally', '5832a71366768098cceb7095efb774f2');

-- User 2: Login=SamH, Password=Test (hashed)
INSERT INTO Users (FirstName, LastName, Login, Password) 
VALUES ('Sam', 'Hill', 'SamH', '0cbc6611f5540bd0809a388dc95a615b');

-- Insert sample colors for User 1 (ID=1)
INSERT INTO Colors (Name, UserID) VALUES ('Blue', 1);
INSERT INTO Colors (Name, UserID) VALUES ('White', 1);
INSERT INTO Colors (Name, UserID) VALUES ('Black', 1);
INSERT INTO Colors (Name, UserID) VALUES ('Gray', 1);
INSERT INTO Colors (Name, UserID) VALUES ('Magenta', 1);
INSERT INTO Colors (Name, UserID) VALUES ('Yellow', 1);
INSERT INTO Colors (Name, UserID) VALUES ('Cyan', 1);
INSERT INTO Colors (Name, UserID) VALUES ('Salmon', 1);
INSERT INTO Colors (Name, UserID) VALUES ('Chartreuse', 1);
INSERT INTO Colors (Name, UserID) VALUES ('Lime', 1);
INSERT INTO Colors (Name, UserID) VALUES ('Light Blue', 1);
INSERT INTO Colors (Name, UserID) VALUES ('Light Gray', 1);
INSERT INTO Colors (Name, UserID) VALUES ('Light Red', 1);
INSERT INTO Colors (Name, UserID) VALUES ('Light Green', 1);
INSERT INTO Colors (Name, UserID) VALUES ('Chiffon', 1);
INSERT INTO Colors (Name, UserID) VALUES ('Fuscia', 1);
INSERT INTO Colors (Name, UserID) VALUES ('Brown', 1);
INSERT INTO Colors (Name, UserID) VALUES ('Beige', 1);

-- Insert sample colors for User 3 (ID=3) - if created
INSERT INTO Colors (Name, UserID) VALUES ('Blue', 3);
INSERT INTO Colors (Name, UserID) VALUES ('White', 3);
INSERT INTO Colors (Name, UserID) VALUES ('Black', 3);
INSERT INTO Colors (Name, UserID) VALUES ('Gray', 3);
INSERT INTO Colors (Name, UserID) VALUES ('Magenta', 3);
INSERT INTO Colors (Name, UserID) VALUES ('Yellow', 3);
INSERT INTO Colors (Name, UserID) VALUES ('Cyan', 3);
INSERT INTO Colors (Name, UserID) VALUES ('Salmon', 3);
INSERT INTO Colors (Name, UserID) VALUES ('Chartreuse', 3);
INSERT INTO Colors (Name, UserID) VALUES ('Lime', 3);
INSERT INTO Colors (Name, UserID) VALUES ('Light Blue', 3);
INSERT INTO Colors (Name, UserID) VALUES ('Light Gray', 3);
INSERT INTO Colors (Name, UserID) VALUES ('Light Red', 3);
INSERT INTO Colors (Name, UserID) VALUES ('Light Green', 3);
INSERT INTO Colors (Name, UserID) VALUES ('Chiffon', 3);
INSERT INTO Colors (Name, UserID) VALUES ('Fuscia', 3);
INSERT INTO Colors (Name, UserID) VALUES ('Brown', 3);
INSERT INTO Colors (Name, UserID) VALUES ('Beige', 3);

-- Create application database user
-- Note: Replace 'YourUsername' and 'YourPassword' with your actual credentials
-- CREATE USER 'YourUsername'@'localhost' IDENTIFIED BY 'YourPassword';
-- GRANT ALL PRIVILEGES ON COP4331.* TO 'YourUsername'@'localhost';
-- FLUSH PRIVILEGES;
