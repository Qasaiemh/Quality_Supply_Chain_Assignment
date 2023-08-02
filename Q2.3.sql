SELECT
    Product_Code,
    T_Name,
    Mean_Height
FROM
    (SELECT
        m.Product_Code,
        s.T_Name,
        AVG(m.T_Height) AS Mean_Height,
        ROW_NUMBER() OVER (ORDER BY AVG(m.T_Height) DESC) AS rn
    FROM
        Measurements m
    JOIN Specifications s ON m.Product_Code = s.Product_Code
    GROUP BY
        m.Product_Code, s.T_Name) ranked
WHERE
    rn <= 2;
