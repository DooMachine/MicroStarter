Angular .Net Core IdentityServer Starter
---------------

<b>IdentityServer4, .NET Core API, Angular Universal (SSR) Starter with cookie authentication, docker, nginx and redis support</b>

Getting started
---------------

```
# Clone the repository
git clone git@github.com:DooMachine/MicroBoiler.git
cd MicroBoiler

# Remove this git config
rm -rf .git 
# Start Your PostgreSql and Rabbitmq
# If you dont have them:
docker-compose -f docker-compose-tools.yml up
# Your redis, postgresql and rabbitmq instances will start with username: doom, password: machine with default ports. You can access them with localhost.
# Install dependencies and configure
# Api Service
cd ApiServices/MicroStarter.Api
# Check your rabbitmq and postgresql username and password
dotnet restore
dotnet run
# IdentityServer4
cd IdentityServices/MicroStarter.Identity
# Check your rabbitmq and postgresql username and password
dotnet restore
dotnet run /seed #seed data for is4 configuration
# SSR Client
cd Clients/MicroStarter.AngularSsrClient
npm install
ng serve
# Don't forget to Set your ASPNETCORE_ENVIRONMENT environment to Development


