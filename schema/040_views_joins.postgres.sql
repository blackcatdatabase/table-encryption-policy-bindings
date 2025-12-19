-- Auto-generated from core/joins-postgres.yaml (map@sha1:29CF395A3A4C8964482083733F8E613ABFBEF5CC)
-- engine: postgres
-- view:   encryption_policy_bindings_current

-- Current policy per (entity, field)
CREATE OR REPLACE VIEW vw_encryption_policy_bindings_current AS
SELECT DISTINCT ON (entity_table, field_name)
  entity_table, field_name, policy_id, effective_from
FROM encryption_policy_bindings
WHERE effective_from <= now()
ORDER BY entity_table, field_name, effective_from DESC;
