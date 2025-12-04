-- Auto-generated from schema-map-mysql.yaml (map@4ae85c5)
-- engine: mysql
-- table:  encryption_policy_bindings

CREATE INDEX idx_enc_pol_bind_entity ON encryption_policy_bindings (entity_table, field_name, effective_from);
