-- Auto-generated from schema-views-postgres.yaml (map@94ebe6c)
-- engine: postgres
-- table:  encryption_policy_bindings

-- Contract view for [encryption_policy_bindings]
CREATE OR REPLACE VIEW vw_encryption_policy_bindings AS
SELECT
  id, entity_table, field_name, policy_id, effective_from, notes
FROM encryption_policy_bindings;
