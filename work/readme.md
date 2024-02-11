# Worked Solution
Working directory to solve problems

## db setup
docker run -e 'ACCEPT_EULA=Y' -e 'MSSQL_SA_PASSWORD=<YourStrong!Passw0rd>' -p 1433:1433 -v ./mssql/data:/var/opt/mssql/data -v ./mssql/log:/var/opt/mssql/log -v ./mssql/secrets:/var/opt/mssql/secrets -d mcr.microsoft.com/mssql/server:2022-latest