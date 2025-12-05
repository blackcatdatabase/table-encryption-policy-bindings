-- Auto-generated from schema-map-postgres.yaml (map@sha1:F0EE237771FBA8DD7C4E886FF276F91A862C3718)
-- engine: postgres
-- table:  encryption_policy_bindings

ALTER TABLE encryption_policy_bindings ADD CONSTRAINT fk_enc_pol_bind_policy FOREIGN KEY (policy_id) REFERENCES encryption_policies(id) ON DELETE CASCADE;
