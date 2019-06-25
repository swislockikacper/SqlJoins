SELECT *
FROM [dbo].[Company] com
FULL OUTER JOIN [dbo].[Client] cli
    ON com.[Id] = cli.[CompanyId]
    WHERE com.[Id] IS NULL OR cli.[CompanyId] IS NULL