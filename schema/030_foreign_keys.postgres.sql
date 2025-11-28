-- Auto-generated from schema-map-postgres.psd1 (map@mtime:2025-11-21T00:25:46Z)
-- engine: postgres
-- table:  encryption_policy_bindings

ALTER TABLE encryption_policy_bindings ADD CONSTRAINT fk_enc_pol_bind_policy FOREIGN KEY (policy_id) REFERENCES encryption_policies(id) ON DELETE CASCADE;
