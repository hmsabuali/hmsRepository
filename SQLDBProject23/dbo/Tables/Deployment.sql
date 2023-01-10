CREATE TABLE [dbo].[Deployment] (
    [DeploymentId]    INT            NOT NULL,
    [Environment]     VARCHAR (10)   NULL,
    [UserName]        NVARCHAR (256) NULL,
    [ApplicationName] NVARCHAR (128) DEFAULT (app_name()) NULL,
    [DeploymentDate]  DATETIME       DEFAULT (getdate()) NULL,
    PRIMARY KEY CLUSTERED ([DeploymentId] ASC)
);

