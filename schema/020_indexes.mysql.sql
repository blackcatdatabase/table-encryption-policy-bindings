-- Auto-generated from schema-map-mysql.yaml (map@sha1:0D716345C0228A9FD8972A3D31574000D05317DB)
-- engine: mysql
-- table:  encryption_policy_bindings

CREATE INDEX idx_enc_pol_bind_entity ON encryption_policy_bindings (entity_table, field_name, effective_from);
