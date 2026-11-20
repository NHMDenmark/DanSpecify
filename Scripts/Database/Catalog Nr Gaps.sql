SELECT
  LPAD(cur+1, 9, '0')  AS gap_start,
  LPAD(nxt-1, 9, '0')  AS gap_end,
  nxt-cur-1            AS gap_size
FROM (
  SELECT
    CAST(co.CatalogNumber AS UNSIGNED) AS cur,
    LEAD(CAST(co.CatalogNumber AS UNSIGNED)) OVER (
      ORDER BY CAST(co.CatalogNumber AS UNSIGNED)
    ) AS nxt
  FROM collectionobject co
  WHERE co.CatalogNumber IS NOT NULL
) t
WHERE nxt-cur >= 500
ORDER BY gap_size DESC;

/*
SELECT COUNT(*)            AS number_of_gaps,
       SUM(nxt - cur - 1)  AS total_missing,
       MAX(nxt - cur - 1)  AS largest_gap
FROM (
  SELECT
    CAST(co.CatalogNumber AS UNSIGNED) AS cur,
    LEAD(CAST(co.CatalogNumber AS UNSIGNED)) OVER (
      ORDER BY CAST(co.CatalogNumber AS UNSIGNED)
    ) AS nxt
  FROM collectionobject co
  WHERE co.CatalogNumber REGEXP '^[0-9]+$'
) t
WHERE nxt - cur > 1;

*/