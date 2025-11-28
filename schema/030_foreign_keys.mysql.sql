-- Auto-generated from schema-map-mysql.psd1 (map@mtime:2025-11-27T15:13:14Z)
-- engine: mysql
-- table:  encryption_policy_bindings

ALTER TABLE encryption_policy_bindings ADD CONSTRAINT fk_enc_pol_bind_policy FOREIGN KEY (policy_id) REFERENCES encryption_policies(id) ON DELETE CASCADE;
