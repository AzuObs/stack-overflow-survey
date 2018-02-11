SELECT
  AVG(Salary),
  Country,
  COUNT(Country) / (
    SELECT COUNT(*)
    FROM SurveyResults
    WHERE Salary > 0
  ) * 100 as `TotalCountryPercent`
FROM
  SurveyResults
WHERE
  Salary > 0
GROUP BY
  Country
ORDER BY
  TotalCountryPercent DESC
