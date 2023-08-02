SELECT
    m.*
FROM
    Measurements m
JOIN Specifications s ON m.Product_Code = s.Product_Code
WHERE
    m.T_Weight < (SELECT MIN(LSL) FROM Specifications);

