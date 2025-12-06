-- Auto-generated from schema-map-postgres.yaml (map@sha1:F0EE237771FBA8DD7C4E886FF276F91A862C3718)
-- engine: postgres
-- table:  encryption_policy_bindings

CREATE INDEX IF NOT EXISTS idx_enc_pol_bind_entity ON encryption_policy_bindings (entity_table, field_name, effective_from);
