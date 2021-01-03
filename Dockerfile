#See https://aka.ms/containerfastmode to understand how Visual Studio uses this Dockerfile to build your images for faster debugging.

FROM mcr.microsoft.com/dotnet/core/aspnet:3.1-focal-arm64v8 AS base
WORKDIR /app
EXPOSE 6220
# 复制字体
COPY ./arial.ttf /usr/share/fonts/arial.ttf

FROM mcr.microsoft.com/dotnet/core/sdk:3.1-focal-arm64v8 AS build
WORKDIR /src
COPY . .
WORKDIR "/src/src/WebHost"
RUN dotnet build "WebHost.csproj" -c Release -o /app/build

FROM build AS publish
RUN dotnet publish "WebHost.csproj" -c Release -o /app/publish

FROM base AS final
WORKDIR /app
COPY --from=publish /app/publish .
ENTRYPOINT ["dotnet", "NetModular.Demo.WebHost.dll"]
