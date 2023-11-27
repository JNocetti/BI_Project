SELECT 
        COUNT(DISTINCT CASE WHEN strftime('%m', Date_buy) BETWEEN '01' AND '11' THEN Customer_ID END) AS TotalUsuariosEneroNoviembre,
        COUNT(DISTINCT CASE WHEN strftime('%m', Date_buy) = '12' THEN Customer_ID END) AS TotalUsuariosDiciembre,
        COUNT(DISTINCT CASE WHEN strftime('%m', Date_buy) BETWEEN '01' AND '11' OR strftime('%m', Date_buy) = '12' THEN Customer_ID END) / COUNT(DISTINCT CASE WHEN strftime('%m', Date_buy) BETWEEN '01' AND '11' THEN Customer_ID END) AS ProporcionDiciembre,
        Gender AS Genero,
        AVG(Age) AS PromedioEdad
    FROM datos
    GROUP BY Gender;

-- Resultado de consulta
/*
       TotalUsuariosEneroNoviembre  TotalUsuariosDiciembre  ProporcionDiciembre  Genero     PromedioEdad
    0                          478                      82                    1     Female         41.102076
    1                            3                       0                    1     Femele         36.666667
    2                          472                      51                    1     Male         41.147810
*/