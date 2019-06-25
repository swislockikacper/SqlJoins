SELECT *
FROM [dbo].[Company] com
RIGHT JOIN [dbo].[Client] cli
    ON com.[Id] = cli.[CompanyId]
    WHERE cli.[CompanyId] IS NULL