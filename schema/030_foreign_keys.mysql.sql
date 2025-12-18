-- Auto-generated from schema-map-mysql.yaml (map@sha1:7AAC4013A2623AC60C658C9BF8458EFE0C7AB741)
-- engine: mysql
-- table:  encryption_policy_bindings

ALTER TABLE encryption_policy_bindings ADD CONSTRAINT fk_enc_pol_bind_policy FOREIGN KEY (policy_id) REFERENCES encryption_policies(id) ON DELETE CASCADE;
