SELECT
  AVG(Salary),
  Country,
  COUNT(Country) / (
    SELECT COUNT(*)
    FROM SurveyResults
    WHERE HomeRemote LIKE "All or almost all%" AND Salary > 0
  ) * 100 as `RemoteCountryPercent`
FROM
  SurveyResults
WHERE
  HomeRemote LIKE "All or almost all%"
  AND Salary > 0
GROUP BY
  Country
ORDER BY
  RemoteCountryPercent DESC
