SELECT *
FROM [dbo].[Company] com
LEFT JOIN [dbo].[Client] cli
    ON com.[Id] = cli.[CompanyId]
    WHERE cli.[Id] IS NULL