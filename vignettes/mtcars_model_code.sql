
    SELECT
      id,
      1/(1+exp(-1*( 
      CASE
        WHEN disp IS NULL THEN 0.09091
        WHEN disp < 145.850006 THEN 0.09091
        ELSE -0.125
      END
     + 
      CASE
        WHEN disp IS NULL THEN 0.04883
        WHEN disp < 145.850006 THEN 0.04883
        ELSE -0.09932
      END
     + 
      CASE
        WHEN disp IS NULL THEN 0.11942
        WHEN disp < 163.800003 THEN 0.11942
        ELSE -0.10458
      END
     + 
      CASE
        WHEN drat IS NULL THEN -0.11361
        WHEN drat < 3.38499999 THEN -0.11361
        ELSE 0.08603
      END
     + 
      CASE
        WHEN drat IS NULL THEN -0.10771
        WHEN drat < 3.34500003 THEN -0.10771
        ELSE 0.04109
      END
     + 
      CASE
        WHEN drat IS NULL THEN -0.12276
        WHEN drat < 3.80999994 THEN -0.12276
        ELSE 0.05927
      END
     + 
      CASE
        WHEN drat IS NULL THEN -0.09372
        WHEN drat < 3.7750001 THEN -0.09372
        ELSE 0.0599
      END
     + 
      CASE
        WHEN drat IS NULL THEN -0.07883
        WHEN drat < 3.78999996 THEN -0.07883
        ELSE 0.09005
      END
     + 
      CASE
        WHEN drat IS NULL THEN -0.06069
        WHEN drat < 3.80000019 THEN -0.06069
        ELSE 0.08947
      END
     + 
      CASE
        WHEN drat IS NULL THEN -0.08274
        WHEN drat < 3.375 THEN -0.08274
        ELSE 0.10951
      END
     + -0.028 + 
      CASE
        WHEN disp IS NULL THEN 0.09559
        WHEN disp < 163.800003 THEN 0.09559
        ELSE 
      CASE
        WHEN mpg IS NULL THEN -0.0221
        WHEN mpg < 16.5 THEN -0.0221
        ELSE -0.09061
      END
    
      END
     + 
      CASE
        WHEN drat IS NULL THEN -0.02058
        WHEN drat < 3.80000019 THEN -0.02058
        ELSE 0.08198
      END
     + 
      CASE
        WHEN disp IS NULL THEN 0.05137
        WHEN disp < 163.800003 THEN 0.05137
        ELSE -0.07511
      END
     + 
      CASE
        WHEN mpg IS NULL THEN -0.04568
        WHEN mpg < 20.1000004 THEN -0.04568
        ELSE 0.07914
      END
     + 
      CASE
        WHEN drat IS NULL THEN -0.09392
        WHEN drat < 3.73500013 THEN -0.09392
        ELSE 0.05887
      END
     ))) AS score
    -- FROM `mtcars`
    FROM mtcars
  