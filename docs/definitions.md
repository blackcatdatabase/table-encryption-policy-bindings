# encryption_policy_bindings

History of which encryption policy applies to a field.

## Columns
| Column | Type | Null | Default | Description | Crypto |
| --- | --- | --- | --- | --- | --- |
| id | BIGINT | NO |  | Surrogate primary key. |  |
| entity_table | VARCHAR(64) | NO |  | Table name. |  |
| field_name | mysql: VARCHAR(64) | NO |  | Column that the policy covers. |  |
| policy_id | mysql: BIGINT | NO |  | Policy identifier (FK encryption_policies.id). |  |
| effective_from | mysql: DATETIME(6) / postgres: TIMESTAMPTZ(6) | NO | CURRENT_TIMESTAMP(6) | Timestamp when the policy becomes active. |  |
| notes | TEXT | YES |  | Documentation / rollout notes. |  |
| created_at | mysql: DATETIME(6) / postgres: TIMESTAMPTZ(6) | NO | CURRENT_TIMESTAMP(6) | Creation timestamp (UTC). |  |
| updated_at | mysql: DATETIME(6) / postgres: TIMESTAMPTZ(6) | NO | CURRENT_TIMESTAMP(6) | Update timestamp (UTC). |  |

## Engine Details

### mysql

Unique keys:
| Name | Columns |
| --- | --- |
| uq_enc_policy_bind | entity_table, field_name, effective_from |

Indexes:
| Name | Columns | SQL |
| --- | --- | --- |
| idx_enc_pol_bind_entity | entity_table,field_name,effective_from | CREATE INDEX idx_enc_pol_bind_entity ON encryption_policy_bindings (entity_table, field_name, effective_from) |
| uq_enc_policy_bind | entity_table,field_name,effective_from | UNIQUE KEY uq_enc_policy_bind (entity_table, field_name, effective_from) |

Foreign keys:
| Name | Columns | References | Actions |
| --- | --- | --- | --- |
| fk_enc_pol_bind_policy | policy_id | encryption_policies(id) | ON DELETE CASCADE |

### postgres

Unique keys:
| Name | Columns |
| --- | --- |
| uq_enc_policy_bind | entity_table, field_name, effective_from |

Indexes:
| Name | Columns | SQL |
| --- | --- | --- |
| idx_enc_pol_bind_entity | entity_table,field_name,effective_from | CREATE INDEX IF NOT EXISTS idx_enc_pol_bind_entity ON encryption_policy_bindings (entity_table, field_name, effective_from) |
| uq_enc_policy_bind | entity_table,field_name,effective_from | CONSTRAINT uq_enc_policy_bind UNIQUE (entity_table, field_name, effective_from) |

Foreign keys:
| Name | Columns | References | Actions |
| --- | --- | --- | --- |
| fk_enc_pol_bind_policy | policy_id | encryption_policies(id) | ON DELETE CASCADE |

## Engine differences

## Views
| View | Engine | Flags | File |
| --- | --- | --- | --- |
| vw_encryption_policy_bindings | mysql | algorithm=MERGE, security=INVOKER | [../schema/040_views.mysql.sql](../schema/040_views.mysql.sql) |
| vw_encryption_policy_bindings_current | mysql | algorithm=MERGE, security=INVOKER | [../schema/040_views_joins.mysql.sql](../schema/040_views_joins.mysql.sql) |
| vw_encryption_policy_bindings | postgres |  | [../schema/040_views.postgres.sql](../schema/040_views.postgres.sql) |
| vw_encryption_policy_bindings_current | postgres |  | [../schema/040_views_joins.postgres.sql](../schema/040_views_joins.postgres.sql) |
