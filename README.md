<div align="center">
  <img src="icon.png" alt="DevOps Nexus Logo" width="120" />

  <h1>DevOps Nexus CLI</h1>
  <p><b>The Official Internal Developer Portal (IDP) for AWJ Team</b></p>

  <a href="https://github.com/AWJ-Team/nexus-downloads/releases">
    <img src="https://img.shields.io/badge/Version-1.2.0-00FFFF?style=for-the-badge&logo=semver&logoColor=black" alt="Version">
  </a>
  <img src="https://img.shields.io/badge/Platform-macOS%20%7C%20Ubuntu-282C34?style=for-the-badge&logo=apple&logoColor=white" alt="Platform">
  <img src="https://img.shields.io/badge/Access-AWJ--Team_Only-FF0000?style=for-the-badge&logo=github&logoColor=white" alt="Access">
  <img src="https://img.shields.io/badge/Powered_by-CloudTurky-00C7B7?style=for-the-badge" alt="CloudTurky">
</div>

---

## 🌌 Introduction

**DevOps Nexus** is the centralized command-line interface and orchestrator for the AWJ Team pipeline. It completely eliminates manual server configuration, standardizes local development environments, and provides a zero-touch interface for triggering complex GitHub Action deployments directly from your local terminal.

Built with performance and security in mind, the Nexus engine compiles down to native machine code, ensuring absolute protection of proprietary deployment logic.

---

## ✨ Core Features

- **🔒 Strict Zero-Trust Security:** Hardcoded execution gates verify real-time GitHub Organization membership (`AWJ-Team`) before allowing pipeline access.
- **⚡ Automated Environment Resolution:** Instantly detects missing dependencies (PHP 8.4, Composer, GitHub CLI) and silently installs them via official sources.
- **🚀 Zero-Touch Provisioning:** Trigger first-time deployments, toggle debug modes, and update Mail/Firebase credentials via an interactive terminal UI.
- **🔄 Auto-Updating Engine:** Injects a global shell wrapper that silently checks for new pipeline versions before every execution.
- **🗂️ Drag-and-Drop Credentials:** Seamlessly parses local Firebase `.json` files dragged directly from your Mac Finder into the terminal.

---

## 📸 Screenshots

<div align="center">
  <table>
    <tr>
      <td align="center"><b>Interactive Provisioning</b></td>
      <td align="center"><b>Live Pipeline Execution</b></td>
    </tr>
    <tr>
      <td><img src="https://placehold.co/400x250/1A1A1A/00FFFF?text=Upload+CLI+Screenshot+1" alt="Interactive Menu"></td>
      <td><img src="https://placehold.co/400x250/1A1A1A/00FFFF?text=Upload+CLI+Screenshot+2" alt="Live Execution"></td>
    </tr>
  </table>
</div>

---

## 🚀 Installation Guide

Choose the installation method that best fits your workflow. Both methods provide the exact same functionality and auto-updating features.

### Option A: The "One-Liner" Terminal Install (Recommended)
*Best for DevOps engineers and Ubuntu users.*

Open your terminal and paste the following command. The script will automatically detect your OS (macOS or Linux), download the correct native binary, and configure your environment.

```bash
curl -fsSL [https://raw.githubusercontent.com/AWJ-Team/nexus-downloads/main/install.sh](https://raw.githubusercontent.com/AWJ-Team/nexus-downloads/main/install.sh) | bash
```

### Option B: The macOS App Bundle (GUI Install)
*Best for macOS users who prefer a native application experience.*

1. Navigate to the [Releases Tab](../../releases/latest) in this repository.
2. Download the `DevOps-Nexus-Installer.zip` file.
3. Extract the `.zip` to reveal the **DevOps Nexus** app (featuring the green Nexus logo).
4. Double-click the App. It will automatically launch a secure terminal session and initialize your system.

> **Note:** Once installed via either method, simply type `nexus` in your terminal to launch the IDP from any project directory.

---

## 📋 Changelog

### `v1.2.0` - The Interactive Release
* **feat:** Completely rebuilt the CLI using Laravel Prompts for a rich, interactive UI.
* **feat:** Implemented Golang-based native installers for Mac (M-Series/Intel) and Ubuntu.
* **feat:** Added Drag-and-Drop functionality for Firebase JSON provisioning.
* **security:** Introduced strict GitHub Organization (`AWJ-Team`) membership verification.
* **automation:** Added silent background installation for PHP 8.4 and Composer via Laravel's official Mac installer.
* **fix:** Resolved workflow targeting issues by prompting for explicit branch selection (`testing` vs `main`).

---

## 👾 Support & Troubleshooting

If the installer halts with an **Access Denied** error:
1. Ensure your GitHub CLI is authenticated by running: `gh auth login`
2. Ensure you have accepted the invitation to the **AWJ-Team** GitHub Organization.
3. If issues persist, contact **Turkibad** on Discord.

---

<div align="center">
  <p><sub>© 2026 AWJ Team | Engineered by CloudTurky | Licensed under MIT</sub></p>
</div>
