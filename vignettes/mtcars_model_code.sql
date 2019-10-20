
    SELECT
      id,
      1/(1+exp(-1*( 
      CASE
        WHEN wt IS NULL THEN 0.432664037
        WHEN wt < 3.18000007 THEN 0.432664037
        ELSE -0.354515553
      END
     + 
      CASE
        WHEN gear IS NULL THEN -0.351138353
        WHEN gear < 3.5 THEN -0.351138353
        ELSE 0.294480026
      END
     + 
      CASE
        WHEN wt IS NULL THEN 0.316431433
        WHEN wt < 3.01250005 THEN 0.316431433
        ELSE -0.252407461
      END
     + 
      CASE
        WHEN gear IS NULL THEN -0.28817305
        WHEN gear < 3.5 THEN -0.28817305
        ELSE 0.207338616
      END
     + 
      CASE
        WHEN wt IS NULL THEN 0.238736823
        WHEN wt < 3.01250005 THEN 0.238736823
        ELSE -0.205021918
      END
     + 
      CASE
        WHEN gear IS NULL THEN -0.249552786
        WHEN gear < 3.5 THEN -0.249552786
        ELSE 0.158202112
      END
     + 
      CASE
        WHEN wt IS NULL THEN 0.190222457
        WHEN wt < 3.01250005 THEN 0.190222457
        ELSE -0.170426115
      END
     + 
      CASE
        WHEN gear IS NULL THEN -0.221233815
        WHEN gear < 3.5 THEN -0.221233815
        ELSE 0.125863954
      END
     + 
      CASE
        WHEN qsec IS NULL THEN 0.197545245
        WHEN qsec < 17.0349998 THEN 0.197545245
        ELSE -0.14508976
      END
     + 
      CASE
        WHEN drat IS NULL THEN -0.1180714
        WHEN drat < 4 THEN -0.1180714
        ELSE 0.210712895
      END
     + log(0.40625/(1-0.40625))))) AS score
    -- FROM `mtcars`
    FROM mtcars
  