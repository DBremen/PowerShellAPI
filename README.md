# Serverless PowerShell API

Based on solution from [Brian Bunke] (http://www.brianbunke.com/) and extended with examples form Doug Finke and Prateek  Singh + added CI through VSTS as described [here] (https://www.visualstudiogeeks.com/DevOps/TestingAzureAutomationPowerShellRunbooksWithPesterInTeamServices)

Solutions used:

- [Azure Functions](https://azure.microsoft.com/en-us/services/functions/)
    - And its "experimental" PowerShell language support for PS v4
- [GitHub](https://github.com/)
- [Swagger v2.0 API spec](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/2.0.md)
- [Azure API Management](https://azure.microsoft.com/en-us/services/api-management/)
- [VSTS] (https://www.visualstudio.com/team-services/)
- [Pester] (https://github.com/pester/Pester)

Azure services do most of the heavy lifting, and the Azure Functions service supports multiple languages. If you bring your own language and replace part two of this series, the rest of the content is language-agnostic.

1. [Create a Serverless REST API in Azure](http://www.brianbunke.com/blog/2018/02/26/serverless-api-in-azure/)
2. [PowerShell in Azure Functions](http://www.brianbunke.com/blog/2018/02/27/powershell-in-azure-functions/)
3. [GitHub Integration with Azure Functions](http://www.brianbunke.com/blog/2018/02/28/github-integration-with-azure-functions/)
4. [Add an API spec in Azure Functions](http://www.brianbunke.com/blog/2018/03/01/azure-functions-swagger-spec/)
5. [Azure Functions and Azure API Management](http://www.brianbunke.com/blog/2018/03/02/azure-functions-api-management/)
6. [Serverless API Series - Conclusion](http://www.brianbunke.com/blog/2018/03/03/serverless-api-conclusion/)
7. [Serverless API using PowerShell in Azure Functions - Prateek Singh] (https://www.youtube.com/watch?v=7b4WenFNWWA)
8. [HTML page from PowerShell Azure Function - Doug Finke] (https://github.com/dfinke/HtmlPageFromPowerShellAzureFunction)
9. [Adding CI pipeline with VSTS and Pester] (https://www.visualstudiogeeks.com/DevOps/TestingAzureAutomationPowerShellRunbooksWithPesterInTeamServices)
