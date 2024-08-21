-- Create the database
CREATE DATABASE IF NOT EXISTS inspire_rn;

-- Use the database
USE inspire_rn;

-- Table `users`
CREATE TABLE IF NOT EXISTS `users` (
  `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `name` VARCHAR(255) NOT NULL,
  `type` VARCHAR(255) DEFAULT 'turista',
  `email` VARCHAR(255) NOT NULL UNIQUE,
  `email_verified_at` TIMESTAMP NULL,
  `city` VARCHAR(255) NOT NULL,
  `password` VARCHAR(255) NOT NULL,
  `remember_token` VARCHAR(100) NULL,
  `created_at` TIMESTAMP NULL,
  `updated_at` TIMESTAMP NULL
) ENGINE=InnoDB;

-- Table `password_reset_tokens`
CREATE TABLE IF NOT EXISTS `password_reset_tokens` (
  `email` VARCHAR(255) NOT NULL PRIMARY KEY,
  `token` VARCHAR(255) NOT NULL,
  `created_at` TIMESTAMP NULL
) ENGINE=InnoDB;

-- Inserir usuários
INSERT INTO users (name, type, email, email_verified_at, city, password, remember_token, created_at, updated_at) VALUES
('Admin User', 'admin', 'admin@example.com', NOW(), 'Natal', '$2y$12$IH1VVLvPhNpz/gi0Ljc1FeTaFcdbWoT7wnzRkM0NDRoBQq4w2av3q', NULL, NOW(), NOW()), -- senha: password
('Tourist User', 'turista', 'tourist@example.com', NOW(), 'Mossoró', '$2y$12$IH1VVLvPhNpz/gi0Ljc1FeTaFcdbWoT7wnzRkM0NDRoBQq4w2av3q', NULL, NOW(), NOW()); -- senha: password

-- Table `sessions`
CREATE TABLE IF NOT EXISTS `sessions` (
  `id` VARCHAR(255) NOT NULL PRIMARY KEY,
  `user_id` BIGINT UNSIGNED NULL,
  `ip_address` VARCHAR(45) NULL,
  `user_agent` TEXT NULL,
  `payload` LONGTEXT NOT NULL,
  `last_activity` INT NOT NULL,
  INDEX `sessions_user_id_index` (`user_id`),
  INDEX `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB;

-- Table `businesses`
CREATE TABLE IF NOT EXISTS `businesses` (
  `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `businessName` VARCHAR(255) NOT NULL,
  `category` VARCHAR(255) NOT NULL,
  `cnpj` CHAR(18) NOT NULL UNIQUE,
  `description` TEXT NOT NULL,
  `phone` VARCHAR(255) NOT NULL,
  `email` VARCHAR(255) NOT NULL UNIQUE,
  `websiteURL` VARCHAR(255) NULL,
  `road` VARCHAR(255) NOT NULL,
  `number` VARCHAR(255) NOT NULL,
  `cep` CHAR(9) NOT NULL,
  `neighborhood` VARCHAR(255) NOT NULL,
  `city` VARCHAR(255) NOT NULL,
  `state` VARCHAR(255) NOT NULL,
  `operatingSchedule` JSON NOT NULL,
  `locationPhoto` VARCHAR(255) NOT NULL,
  `ownerName` VARCHAR(255) NOT NULL,
  `ownerTelephone` VARCHAR(255) NOT NULL,
  `ownerEmail` VARCHAR(255) NOT NULL UNIQUE,
  `ownerCpf` CHAR(14) NOT NULL UNIQUE,
  `status` VARCHAR(255) DEFAULT 'pendente',
  `ratingBusiness` TEXT NULL,
  `registrationDate` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  `created_at` TIMESTAMP NULL,
  `updated_at` TIMESTAMP NULL,
  `user_id` BIGINT UNSIGNED NOT NULL,
  FOREIGN KEY (`user_id`) REFERENCES `users`(`id`) ON DELETE CASCADE
) ENGINE=InnoDB;

-- Table `social_medias`
CREATE TABLE IF NOT EXISTS `social_medias` (
  `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `business_id` BIGINT UNSIGNED NOT NULL,
  `socialMediaName` VARCHAR(255) NOT NULL,
  `socialMediaURL` VARCHAR(255) NOT NULL,
  `created_at` TIMESTAMP NULL,
  `updated_at` TIMESTAMP NULL,
  FOREIGN KEY (`business_id`) REFERENCES `businesses`(`id`) ON DELETE CASCADE
) ENGINE=InnoDB;

-- Table `cities`
CREATE TABLE IF NOT EXISTS `cities` (
  `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `name` VARCHAR(255) NOT NULL,
  `created_at` TIMESTAMP NULL,
  `updated_at` TIMESTAMP NULL
) ENGINE=InnoDB;

-- Insert cities in RN
INSERT INTO `cities` (`name`) VALUES
('Acari'), ('Açu'), ('Afonso Bezerra'), ('Água Nova'), ('Alexandria'),
('Almino Afonso'), ('Alto do Rodrigues'), ('Angicos'), ('Antônio Martins'),
('Apodi'), ('Areia Branca'), ('Arês'), ('Augusto Severo'), ('Baía Formosa'),
('Baraúna'), ('Barcelona'), ('Bento Fernandes'), ('Bodó'), ('Bom Jesus'),
('Brejinho'), ('Caiçara do Norte'), ('Caiçara do Rio do Vento'), ('Caicó'),
('Campo Redondo'), ('Canguaretama'), ('Caraúbas'), ('Carnaúba dos Dantas'),
('Carnaubais'), ('Ceará-Mirim'), ('Cerro Corá'), ('Coronel Ezequiel'),
('Coronel João Pessoa'), ('Cruzeta'), ('Currais Novos'), ('Doutor Severiano'),
('Encanto'), ('Equador'), ('Espírito Santo'), ('Extremoz'), ('Felipe Guerra'),
('Fernando Pedroza'), ('Florânia'), ('Francisco Dantas'), ('Frutuoso Gomes'),
('Galinhos'), ('Goianinha'), ('Governador Dix-Sept Rosado'), ('Grossos'),
('Guamaré'), ('Ielmo Marinho'), ('Ipanguaçu'), ('Ipueira'), ('Itajá'),
('Itaú'), ('Jaçanã'), ('Jandaíra'), ('Janduís'), ('Januário Cicco'),
('Japi'), ('Jardim de Angicos'), ('Jardim de Piranhas'), ('Jardim do Seridó'),
('João Câmara'), ('João Dias'), ('José da Penha'), ('Jucurutu'), ('Jundiá'),
('Lagoa d\'Anta'), ('Lagoa de Pedras'), ('Lagoa de Velhos'), ('Lagoa Nova'),
('Lagoa Salgada'), ('Lajes'), ('Lajes Pintadas'), ('Lucrécia'), ('Luís Gomes'),
('Macaíba'), ('Macau'), ('Major Sales'), ('Marcelino Vieira'), ('Martins'),
('Maxaranguape'), ('Messias Targino'), ('Montanhas'), ('Monte Alegre'),
('Monte das Gameleiras'), ('Mossoró'), ('Natal'), ('Nísia Floresta'),
('Nova Cruz'), ('Olho-d\'Água do Borges'), ('Ouro Branco'), ('Paraná'),
('Paraú'), ('Parazinho'), ('Parelhas'), ('Parnamirim'), ('Passa e Fica'),
('Passagem'), ('Patu'), ('Pau dos Ferros'), ('Pedra Grande'), ('Pedra Preta'),
('Pedro Avelino'), ('Pedro Velho'), ('Pendências'), ('Pilões'),
('Poço Branco'), ('Portalegre'), ('Porto do Mangue'), ('Presidente Juscelino'),
('Pureza'), ('Rafael Fernandes'), ('Rafael Godeiro'), ('Riacho da Cruz'),
('Riacho de Santana'), ('Riachuelo'), ('Rio do Fogo'), ('Rodolfo Fernandes'),
('Ruy Barbosa'), ('Santa Cruz'), ('Santa Maria'), ('Santana do Matos'),
('Santana do Seridó'), ('Santo Antônio'), ('São Bento do Norte'),
('São Bento do Trairí'), ('São Fernando'), ('São Francisco do Oeste'),
('São Gonçalo do Amarante'), ('São João do Sabugi'), ('São José de Mipibu'),
('São José do Campestre'), ('São José do Seridó'), ('São Miguel'),
('São Miguel do Gostoso'), ('São Paulo do Potengi'), ('São Pedro'),
('São Rafael'), ('São Tomé'), ('São Vicente'), ('Senador Elói de Souza'),
('Senador Georgino Avelino'), ('Serra de São Bento'), ('Serra do Mel'),
('Serra Negra do Norte'), ('Serrinha'), ('Serrinha dos Pintos'),
('Severiano Melo'), ('Sítio Novo'), ('Taboleiro Grande'), ('Taipu'),
('Tangará'), ('Tenente Ananias'), ('Tenente Laurentino Cruz'), ('Tibau'),
('Tibau do Sul'), ('Timbaúba dos Batistas'), ('Touros'), ('Triunfo Potiguar'),
('Umarizal'), ('Upanema'), ('Várzea'), ('Venha-Ver'), ('Vera Cruz'),
('Viçosa'), ('Vila Flor');

-- Insert business 1
INSERT INTO `businesses` (
  `businessName`, `category`, `cnpj`, `description`, `phone`, `email`, 
  `websiteURL`, `road`, `number`, `cep`, `neighborhood`, `city`, `state`, 
  `operatingSchedule`, `locationPhoto`, `ownerName`, `ownerTelephone`, 
  `ownerEmail`, `ownerCpf`, `user_id`
) VALUES (
  'Turista Business 1', 'Restaurante', '12.345.678/0001-99', 'Descrição do negócio 1', '1234567890', 'business1@example.com',
  'http://www.business1.com', 'Rua 1', '123', '59000-000', 'Bairro 1', 'Cidade 1', 'Estado 1',
  '[{"day":"Segunda","opening_time":"10:00","closing_time":"20:00"},{"day":"Terça","opening_time":"10:00","closing_time":"20:00"},{"day":"Quarta","opening_time":"10:00","closing_time":"20:00"},{"day":"Quinta","opening_time":"10:00","closing_time":"20:00"},{"day":"Sexta","opening_time":"10:00","closing_time":"20:00"},{"day":"Sábado","opening_time":"10:00","closing_time":"20:00"}]', 'location_photo1.jpg', 'Owner 1', '1234567890',
  'owner1@example.com', '123.456.789-01', 2
);

-- Get the last inserted business ID
SET @business1_id = LAST_INSERT_ID();

-- Insert social media entries for business 1
INSERT INTO `social_medias` (`business_id`, `socialMediaName`, `socialMediaURL`, `created_at`, `updated_at`) VALUES
  (@business1_id, 'Facebook', 'http://www.facebook.com/business1', NOW(), NOW()),
  (@business1_id, 'Instagram', 'http://www.instagram.com/business1', NOW(), NOW()),
  (@business1_id, 'WhatsApp', 'http://www.whatsapp.com/business1', NOW(), NOW());

-- Insert business 2
INSERT INTO `businesses` (
  `businessName`, `category`, `cnpj`, `description`, `phone`, `email`, 
  `websiteURL`, `road`, `number`, `cep`, `neighborhood`, `city`, `state`, 
  `operatingSchedule`, `locationPhoto`, `ownerName`, `ownerTelephone`, 
  `ownerEmail`, `ownerCpf`, `user_id`
) VALUES (
  'Turista Business 2', 'Pousada', '12.345.678/0001-88', 'Descrição do negócio 2', '1234567891', 'business2@example.com',
  'http://www.business2.com', 'Rua 2', '456', '59001-000', 'Bairro 2', 'Cidade 2', 'Estado 2',
  '[{"day":"Segunda","opening_time":"10:00","closing_time":"20:00"},{"day":"Terça","opening_time":"10:00","closing_time":"20:00"},{"day":"Quarta","opening_time":"10:00","closing_time":"20:00"},{"day":"Quinta","opening_time":"10:00","closing_time":"20:00"},{"day":"Sexta","opening_time":"10:00","closing_time":"20:00"},{"day":"Sábado","opening_time":"10:00","closing_time":"20:00"}]', 'location_photo2.jpg', 'Owner 2', '1234567891',
  'owner2@example.com', '123.456.789-02', 2
);

-- Get the last inserted business ID
SET @business2_id = LAST_INSERT_ID();

-- Insert social media entries for business 2
INSERT INTO `social_medias` (`business_id`, `socialMediaName`, `socialMediaURL`, `created_at`, `updated_at`) VALUES
  (@business2_id, 'Facebook', 'http://www.facebook.com/business2', NOW(), NOW()),
  (@business2_id, 'Instagram', 'http://www.instagram.com/business2', NOW(), NOW()),
  (@business2_id, 'WhatsApp', 'http://www.whatsapp.com/business2', NOW(), NOW());

-- Insert business 2
INSERT INTO `businesses` (
  `businessName`, `category`, `cnpj`, `description`, `phone`, `email`, 
  `websiteURL`, `road`, `number`, `cep`, `neighborhood`, `city`, `state`, 
  `operatingSchedule`, `locationPhoto`, `ownerName`, `ownerTelephone`, 
  `ownerEmail`, `ownerCpf`, `user_id`
) VALUES (
  'Turista Business 2', 'Pousada', '12.345.678/0001-10', 'Descrição do negócio 2', '1234567891', 'business2@example.com',
  'http://www.business2.com', 'Rua 2', '456', '59001-000', 'Bairro 2', 'Cidade 2', 'Estado 2',
  '{"Monday": "0:00-23:59", "Tuesday": "0:00-23:59"}', 'location_photo2.jpg', 'Owner 2', '1234567891',
  'owner2@example.com', '123.456.789-02', 5
);

-- Get the last inserted ID for the business
SET @business2_id = LAST_INSERT_ID();

-- Insert social media entries for business 2
INSERT INTO `social_medias` (`business_id`, `socialMediaName`, `socialMediaURL`, `created_at`, `updated_at`) VALUES
  (@business2_id, 'Facebook', 'http://www.facebook.com/business2', NOW(), NOW()),
  (@business2_id, 'Instagram', 'http://www.instagram.com/business2', NOW(), NOW()),
  (@business2_id, 'WhatsApp', 'http://www.whatsapp.com/business2', NOW(), NOW());

-- Add tables that do not have migrations
CREATE TABLE IF NOT EXISTS `accommodations` (
  `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `name` VARCHAR(255) NOT NULL,
  `description` TEXT NOT NULL,
  `address` VARCHAR(255) NOT NULL,
  `city` VARCHAR(255) NOT NULL,
  `state` VARCHAR(255) NOT NULL,
  `zip` CHAR(9) NOT NULL,
  `phone` VARCHAR(255) NOT NULL,
  `email` VARCHAR(255) NOT NULL UNIQUE,
  `website` VARCHAR(255) NULL,
  `created_at` TIMESTAMP NULL,
  `updated_at` TIMESTAMP NULL
) ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS `rooms` (
  `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `accommodation_id` BIGINT UNSIGNED NOT NULL,
  `name` VARCHAR(255) NOT NULL,
  `description` TEXT NOT NULL,
  `price` DECIMAL(10, 2) NOT NULL,
  `created_at` TIMESTAMP NULL,
  `updated_at` TIMESTAMP NULL,
  FOREIGN KEY (`accommodation_id`) REFERENCES `accommodations`(`id`) ON DELETE CASCADE
) ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS `tourist_spots` (
  `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `name` VARCHAR(255) NOT NULL,
  `description` TEXT NOT NULL,
  `city` VARCHAR(255) NOT NULL,
  `state` VARCHAR(255) NOT NULL,
  `address` VARCHAR(255) NOT NULL,
  `zip` CHAR(9) NOT NULL,
  `phone` VARCHAR(255) NOT NULL,
  `email` VARCHAR(255) NOT NULL UNIQUE,
  `website` VARCHAR(255) NULL,
  `created_at` TIMESTAMP NULL,
  `updated_at` TIMESTAMP NULL
) ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS `services` (
  `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `name` VARCHAR(255) NOT NULL,
  `description` TEXT NOT NULL,
  `created_at` TIMESTAMP NULL,
  `updated_at` TIMESTAMP NULL
) ENGINE=InnoDB;
