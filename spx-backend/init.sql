SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for asset
-- ----------------------------
DROP TABLE IF EXISTS `asset`;
CREATE TABLE `asset`  (
                          `id` int NOT NULL AUTO_INCREMENT,
                          `display_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
                          `owner` varchar(255) NULL DEFAULT NULL,
                          `category` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
                          `is_public` tinyint NULL DEFAULT NULL,
                          `files` json NULL,
                          `preview` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
                          `asset_type` int NULL DEFAULT NULL,
                          `click_count` int NULL DEFAULT 0,
                          `status` int NULL DEFAULT NULL,
                          `c_time` datetime NULL DEFAULT NULL,
                          `u_time` datetime NULL DEFAULT NULL,
                          PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for project
-- ----------------------------
DROP TABLE IF EXISTS `project`;
CREATE TABLE `project`  (
                            `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
                            `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
                            `owner` varchar(255) NULL DEFAULT NULL,
                            `files` json NULL,
                            `is_public` tinyint NULL DEFAULT NULL,
                            `version` int NOT NULL DEFAULT 1,
                            `status` int NULL DEFAULT NULL,
                            `c_time` datetime NULL DEFAULT NULL,
                            `u_time` datetime NULL DEFAULT NULL,
                            PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

SET FOREIGN_KEY_CHECKS = 1;
