WITH CTE_NUM AS (
  SELECT 1 AS NUM
  UNION ALL
  SELECT NUM + 1
  FROM CTE_NUM
  WHERE NUM + 1 <= 50
)
SELECT * FROM CTE_NUM
;
WITH CTE_NUM AS (
  SELECT 1 AS NUM
  UNION ALL
  SELECT NUM + 1
  FROM CTE_NUM
  WHERE NUM < 50

)
SELECT * FROM CTE_NUM