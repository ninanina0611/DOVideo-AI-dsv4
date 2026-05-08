USE media_db;

-- 创建 users 表
CREATE TABLE IF NOT EXISTS `users` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `username` VARCHAR(255) NOT NULL UNIQUE,
  `password` VARCHAR(255) NOT NULL,
  `nickname` VARCHAR(255) NULL,
  `avatar` VARCHAR(255) NULL,
  `role` VARCHAR(255) NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- 创建 media_files 表
CREATE TABLE IF NOT EXISTS `media_files` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `user_id` BIGINT NOT NULL,
  `filename` VARCHAR(255) NULL,
  `status` VARCHAR(50) NULL,
  `file_path` VARCHAR(500) NULL,
  `ai_summary` TEXT NULL,
  `transcript_text` LONGTEXT NULL,
  `cover_url` VARCHAR(500) NULL,
  `upload_time` DATETIME NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
