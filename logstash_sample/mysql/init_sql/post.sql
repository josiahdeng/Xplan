USE logstash_sample;

CREATE TABLE posts
(
    `id`          VARCHAR(255) NOT NULL,
    `title`       VARCHAR(255),
    `description` VARCHAR(255),
    `content`     TEXT,
    `view_count`  INT,
    `likes`       INT,
    `sort`        INT,
    `created_at`  DATETIME,
    `updated_at`  DATETIME,
    `deleted_at`  DATETIME,
    PRIMARY KEY (`id`),
    INDEX deleted_at (`deleted_at`)
) COLLATE = "utf8mb4_general_ci";

INSERT INTO `posts` (`id`,
                     `title`,
                     `description`,
                     `content`,
                     `created_at`,
                     `updated_at`, `deleted_at`) VALUE ('0ab672b8-0bf6-11ed-b3c0-b15594e8cd49',
                                          'logstash_sample_title',
                                          'logstash_sample_description',
                                          'logstash_sample_content', NOW(), NOW(), NULL);

INSERT INTO `posts` (`id`,
                     `title`,
                     `description`,
                     `content`,
                     `created_at`,
                     `updated_at`, `deleted_at`) VALUE ('6fa60f80-0bf6-11ed-b3c0-b15594e8cd49',
                                          'delete_logstash_sample_title',
                                          'delete_logstash_sample_description',
                                          'delete_logstash_sample_content', NOW(), NOW(), NOW());