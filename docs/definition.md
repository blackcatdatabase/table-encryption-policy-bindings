<!-- Auto-generated from schema-map-postgres.psd1 @ 62c9c93 (2025-11-20T21:38:11+01:00) -->
# Definition – encryption_policy_bindings

History of which encryption policy applies to a field.

## Columns
| Column | Type | Null | Default | Description | Notes |
|-------:|:-----|:----:|:--------|:------------|:------|
| id | BIGINT | — | AS | Surrogate primary key. |  |
| entity_table | VARCHAR(64) | NO | — | Table name. |  |
| field_name | VARCHAR(64) | NO | — | Column that the policy covers. |  |
| policy_id | BIGINT | NO | — | Policy identifier (FK encryption_policies.id). |  |
| effective_from | TIMESTAMPTZ(6) | NO | CURRENT_TIMESTAMP(6) | Timestamp when the policy becomes active. |  |
| notes | TEXT | YES | — | Documentation / rollout notes. |  |