# Use the Windows Server Core Insider base image
FROM mcr.microsoft.com/windows/servercore/insider:latest

# Install IIS
RUN powershell -NoProfile -Command \
    Install-WindowsFeature -Name Web-Server; \
    Remove-Item -Recurse -Force C:\inetpub\wwwroot\*

# Copy your website content into IIS root
COPY ./site/ C:/inetpub/wwwroot/

# Expose HTTP port
EXPOSE 80

# Start IIS in the foreground
ENTRYPOINT ["C:\\Windows\\System32\\inetsrv\\w3wp.exe"]
