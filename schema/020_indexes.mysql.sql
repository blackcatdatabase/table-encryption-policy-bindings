-- Auto-generated from schema-map-mysql.psd1 (map@mtime:2025-11-27T15:13:14Z)
-- engine: mysql
-- table:  encryption_policy_bindings

CREATE INDEX idx_enc_pol_bind_entity ON encryption_policy_bindings (entity_table, field_name, effective_from);
