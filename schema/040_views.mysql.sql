-- Auto-generated from schema-views-mysql.psd1 (map@62c9c93)
-- engine: mysql
-- table:  encryption_policy_bindings_current
-- Current policy per (entity, field)
CREATE OR REPLACE ALGORITHM=MERGE SQL SECURITY INVOKER VIEW vw_encryption_policy_bindings_current AS
SELECT
  entity_table,
  field_name,
  policy_id,
  effective_from
FROM (
  SELECT
    entity_table,
    field_name,
    policy_id,
    effective_from,
    ROW_NUMBER() OVER (PARTITION BY entity_table, field_name ORDER BY effective_from DESC) AS rn
  FROM encryption_policy_bindings
  WHERE effective_from <= NOW()
) ranked
WHERE rn = 1;

-- Auto-generated from schema-views-mysql.psd1 (map@62c9c93)
-- engine: mysql
-- table:  encryption_policy_bindings
-- Contract view for [encryption_policy_bindings]
CREATE OR REPLACE ALGORITHM=MERGE SQL SECURITY INVOKER VIEW vw_encryption_policy_bindings AS
SELECT
  id,
  entity_table,
  field_name,
  policy_id,
  effective_from,
  notes
FROM encryption_policy_bindings;

