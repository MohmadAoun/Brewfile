# 🚀 Mac Dev Environment Setup

This repository/folder contains everything needed to quickly set up a full development environment on macOS.

It installs:

- Homebrew & CLI tools (git, curl, wget, python, openjdk, zsh)
- Node.js, Yarn, Gradle, Maven
- IDEs: VS Code, Android Studio, Xcode
- Tools: Docker, Postman, Fastlane, CocoaPods, Flutter
- Apps: iTerm2, Chrome, Slack, Telegram, ProtonVPN

---

## 📦 Files

- **Brewfile** → List of all apps/packages to be installed with Homebrew
- **setup.sh** → Script that installs Homebrew, restores the Brewfile, sets up Flutter, VSCode extensions, etc.
- **README.md** → Instructions (this file)

---

## 🔧 Usage Instructions

1. **Copy files to your Mac**  
   Place `setup.sh` and `Brewfile` in the same folder (e.g., `~/mac-setup`).

2. **Make the script executable**
   ```bash
   cd ~/mac-setup
   chmod +x setup.sh
   ```
   Run the setup
