-- Auto-generated from joins-mysql.yaml (map@85230ed)
-- engine: mysql
-- view:   encryption_policy_bindings_current

CREATE OR REPLACE ALGORITHM=MERGE SQL SECURITY INVOKER VIEW vw_encryption_policy_bindings_current AS
SELECT
  epb.entity_table,
  epb.field_name,
  epb.policy_id,
  epb.effective_from
FROM encryption_policy_bindings epb
WHERE epb.effective_from <= NOW()
  AND NOT EXISTS (
    SELECT 1
    FROM encryption_policy_bindings newer
    WHERE newer.entity_table = epb.entity_table
      AND newer.field_name  = epb.field_name
      AND newer.effective_from > epb.effective_from
      AND newer.effective_from <= NOW()
  );
