#!/bin/bash
set -e

echo "🔧 Starting Mac Dev Environment Setup..."

# --- Install Homebrew ---
if ! command -v brew &> /dev/null
then
    echo "Installing Homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# --- Brewfile Restore ---
echo "📦 Installing apps from Brewfile..."
brew bundle --file="$(dirname "$0")/Brewfile"

# --- NPM Globals ---
echo "⬇️ Installing global npm packages..."
npm install -g yarn eslint typescript

# --- Flutter Setup ---
echo "Running flutter doctor..."
flutter doctor

# --- VSCode Extensions (Optional) ---
if command -v code &> /dev/null
then
    echo "⬇️ Installing VSCode extensions..."
    code --install-extension Dart-Code.flutter
    code --install-extension ms-vscode.cpptools
    code --install-extension esbenp.prettier-vscode
fi

echo "✅ Setup complete! Restart your terminal."
