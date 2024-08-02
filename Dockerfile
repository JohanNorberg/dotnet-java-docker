FROM bitnami/dotnet-sdk:8.0.302

# Install Java and cleanup
RUN apt-get update && \
    apt-get install -y openjdk-17-jre-headless && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Verify installations
RUN dotnet --version && \
    java -version
