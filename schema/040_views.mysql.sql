-- Auto-generated from schema-views-mysql.yaml (map@sha1:A4E10261DACB7519F6FEA44ED77A92163429CA5E)
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
  notes,
  created_at,
  updated_at
FROM encryption_policy_bindings;
