-- Auto-generated from schema-map-mysql.yaml (map@sha1:7AAC4013A2623AC60C658C9BF8458EFE0C7AB741)
-- engine: mysql
-- table:  encryption_policy_bindings

CREATE TABLE IF NOT EXISTS encryption_policy_bindings (
  id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  entity_table VARCHAR(64) NOT NULL,
  field_name VARCHAR(64) NOT NULL,
  policy_id BIGINT UNSIGNED NOT NULL,
  effective_from DATETIME(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  notes TEXT NULL,
  created_at DATETIME(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  updated_at DATETIME(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  UNIQUE KEY uq_enc_policy_bind (entity_table, field_name, effective_from)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
