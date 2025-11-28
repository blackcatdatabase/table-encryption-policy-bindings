-- Auto-generated from schema-map-postgres.psd1 (map@mtime:2025-11-21T00:25:46Z)
-- engine: postgres
-- table:  encryption_policy_bindings

CREATE INDEX IF NOT EXISTS idx_enc_pol_bind_entity ON encryption_policy_bindings (entity_table, field_name, effective_from);
