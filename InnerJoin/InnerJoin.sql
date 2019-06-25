SELECT *
FROM [dbo].[Company] com
INNER JOIN [dbo].[Client] cli
    ON com.[Id] = cli.[CompanyId]