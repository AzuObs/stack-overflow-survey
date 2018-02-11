SELECT
  CollaborateRemote,
  COUNT(CollaborateRemote) / (
    SELECT COUNT(*)
    FROM SurveyResults
  ) * 100 as `TotalPercent`
FROM
  SurveyResults
GROUP BY
  CollaborateRemote
ORDER BY
  `TotalPercent` DESC
