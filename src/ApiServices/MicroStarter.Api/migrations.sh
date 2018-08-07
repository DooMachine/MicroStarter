#!/bin/sh
cd src/MicroStarter.Api
rm -rf Migrations

dotnet ef migrations add InitialMigrations -c MicroStarterApiContext -o Migrations/IdentityServer/UsersDb
dotnet ef migrations script -c MicroStarterApiContext -o Migrations/MicroStarter.Api/MicroStarterApiContext.sql
cd ../..
