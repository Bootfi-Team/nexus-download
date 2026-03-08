#!/bin/bash

echo "🚀 Initializing DevOps Nexus Installer..."

# 1. Detect Operating System
OS="$(uname -s)"

# 2. Define Download URLs (Pointing to your GitHub Release)
# Replace these with the ACTUAL links from your Release Assets if they differ
MAC_URL="https://github.com/bootfi-team/nexus-download/releases/download/v1.2.0/setup-nexus-mac"
UBUNTU_URL="https://github.com/bootfi-team/nexus-download/releases/download/v1.2.0/setup-nexus-ubuntu"

# 3. Download the correct binary based on OS
if [ "$OS" = "Darwin" ]; then
    echo "🍎 System: macOS detected. Downloading engine..."
    curl -L "$MAC_URL" -o nexus-installer
elif [ "$OS" = "Linux" ]; then
    echo "🐧 System: Ubuntu/Linux detected. Downloading engine..."
    curl -L "$UBUNTU_URL" -o nexus-installer
else
    echo "❌ [ERROR] Unsupported Operating System: $OS"
    exit 1
fi

# 4. Finalize and Run
if [ -f "nexus-installer" ]; then
    chmod +x nexus-installer
    ./nexus-installer
    
    # 5. Self-Cleanup after the Go installer finishes
    rm nexus-installer
else
    echo "❌ [ERROR] Download failed. Check your internet connection or GitHub Release links."
    exit 1
fi
