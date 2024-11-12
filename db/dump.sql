-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: db:3306
-- Generation Time: Sep 06, 2024 at 04:50 PM
-- Server version: 8.0.27
-- PHP Version: 8.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lamp_docker`
--

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE `blog` (
  `id` int NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `blog`
--

INSERT INTO `blog` (`id`, `title`, `content`, `date`) VALUES
(1, 'lorem ipsum dolor', 'I don\'t know, beacuase the hospital is not here. I\'m ill, and I am sick and tired.', '2024-09-04'),
(4, 'the airport', 'I lived at the airport sence last year\r\nI can\'t stop about this is my life\r\nthis is me now.\r\nI don\'t understand a lot of english', '2024-09-12');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blog`
--
ALTER TABLE `blog`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

                                                                                                                                         
                                                                                                                                                  
CREATE TABLE `users` (                                                                                                                            
  `id` int NOT NULL,                                                                                                                              
  `user_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,                                                                                   
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,                                                                                    
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL                                                                                         
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;                                                                               
                                                                                                                                                  
                                                                                                                                                  
INSERT INTO `users` (`id`, `user_name`, `password`, `name`) VALUES                                                                                
(1, 'elias', '123', 'Elias Aguirre'),                                                                                                             
(2, 'juan', '123', 'Juan Silvestre Pantha'),                                                                                                      
(3, 'romario', '123', 'Romario Castanieda Locio');                                                                                                
                                                                                                                                                  
ALTER TABLE `users`                                                                                                                               
  ADD PRIMARY KEY (`id`);                                                                                                                         
--                                                                                                                                                
ALTER TABLE `users`                                                                                                                               
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;                                                                                      
COMMIT;                                                           