-- Auto-generated from schema-views-postgres.psd1 (map@mtime:2025-11-27T15:36:13Z)
-- engine: postgres
-- table:  encryption_policy_bindings

-- Contract view for [encryption_policy_bindings]
CREATE OR REPLACE VIEW vw_encryption_policy_bindings AS
SELECT
  id, entity_table, field_name, policy_id, effective_from, notes
FROM encryption_policy_bindings;
