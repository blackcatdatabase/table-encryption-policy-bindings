-- Auto-generated from schema-views-postgres.psd1 (map@9d3471b)
-- engine: postgres
-- table:  encryption_policy_bindings_current
-- Current policy per (entity, field)
CREATE OR REPLACE VIEW vw_encryption_policy_bindings_current AS
SELECT DISTINCT ON (entity_table, field_name)
  entity_table, field_name, policy_id, effective_from
FROM encryption_policy_bindings
WHERE effective_from <= now()
ORDER BY entity_table, field_name, effective_from DESC;

-- Auto-generated from schema-views-postgres.psd1 (map@9d3471b)
-- engine: postgres
-- table:  encryption_policy_bindings
-- Contract view for [encryption_policy_bindings]
CREATE OR REPLACE VIEW vw_encryption_policy_bindings AS
SELECT
  id, entity_table, field_name, policy_id, effective_from, notes
FROM encryption_policy_bindings;

