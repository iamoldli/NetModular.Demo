#See https://aka.ms/containerfastmode to understand how Visual Studio uses this Dockerfile to build your images for faster debugging.

# 构建阶段，使用 SDK 镜像
FROM mcr.microsoft.com/dotnet/sdk:9.0 AS build
WORKDIR /src
COPY . .
WORKDIR "/src/src/WebHost"
RUN dotnet publish "WebHost.csproj" -c Release -o /app/publish

# 发布阶段，使用运行时镜像
FROM mcr.microsoft.com/dotnet/aspnet:9.0 AS final
WORKDIR /app

# 拷贝字体文件（如果用于运行阶段）
COPY ./arial.ttf /usr/share/fonts/arial.ttf

# 拷贝发布产物
COPY --from=build /app/publish .

# 暴露端口
EXPOSE 6220

ENTRYPOINT ["dotnet", "NetModular.Demo.WebHost.dll"]
