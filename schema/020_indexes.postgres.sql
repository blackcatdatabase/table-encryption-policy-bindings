-- Auto-generated from schema-map-postgres.yaml (map@74ce4f4)
-- engine: postgres
-- table:  encryption_policy_bindings

CREATE INDEX IF NOT EXISTS idx_enc_pol_bind_entity ON encryption_policy_bindings (entity_table, field_name, effective_from);
