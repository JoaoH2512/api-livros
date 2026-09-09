-- phpMyAdmin SQL Dump
-- Banco de dados: biblioteca_db

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

CREATE DATABASE IF NOT EXISTS `biblioteca_db`
    DEFAULT CHARACTER SET utf8mb4
    COLLATE utf8mb4_general_ci;

USE `biblioteca_db`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `livros`
--

CREATE TABLE IF NOT EXISTS `livros` (
    `id` int NOT NULL AUTO_INCREMENT,
    `titulo` varchar(150) NOT NULL,
    `autor` varchar(120) NOT NULL,
    `ano_publicacao` int NOT NULL,
    `disponivel` tinyint(1) NOT NULL DEFAULT 1,
    PRIMARY KEY (`id`),
    KEY `ix_livros_id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Dados da tabela `livros`
--

INSERT INTO `livros`
    (`titulo`, `autor`, `ano_publicacao`, `disponivel`)
VALUES
    ('O Hobbit', 'J. R. R. Tolkien', 1937, 1);

COMMIT;