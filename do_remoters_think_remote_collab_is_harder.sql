SELECT
  CollaborateRemote,
  COUNT(CollaborateRemote) / (
    SELECT COUNT(*)
    FROM SurveyResults
    WHERE HomeRemote LIKE "All or almost all%"
  ) * 100 as `RemotePercent`
FROM
  SurveyResults
WHERE
  HomeRemote LIKE "All or almost all%"
GROUP BY
  CollaborateRemote
ORDER BY
  `RemotePercent` DESC
