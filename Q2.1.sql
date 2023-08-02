SELECT
    m.Product_Code,
    s.T_Name,
    AVG(m.T_Height) AS Mean_Height,
    STDEV(m.T_Height) AS Std_Dev_Height,
    AVG(m.T_Weight) AS Mean_Weight,
    STDEV(m.T_Weight) AS Std_Dev_Weight
FROM
    Measurements m
JOIN Specifications s ON m.Product_Code = s.Product_Code
GROUP BY
    m.Product_Code, s.T_Name;

