
WITH source AS (
  SELECT
  *
  FROM {{ ref('state')}}
),
stage_state AS (
  SELECT
    state_code,
    state_name
  FROM source
)
SELECT
*
FROM stage_state
