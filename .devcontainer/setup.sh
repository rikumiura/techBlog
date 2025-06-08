#!/bin/bash

echo "Setting up development environment..."

# カレントディレクトリの確認
echo "Current directory: $(pwd)"
echo "Directory contents:"
ls -la

# package.jsonの存在確認
if [ ! -f "package.json" ]; then
    echo "Error: package.json not found in $(pwd)"
    echo "Please make sure you're in the correct directory"
    exit 1
fi

# 依存関係のインストール
echo "Installing dependencies with pnpm..."
pnpm install

# pnpmのshell補完を設定
echo "Setting up pnpm completion..."
if [ -n "$ZSH_VERSION" ]; then
    pnpm completion zsh > ~/completion-for-pnpm.zsh
    echo 'source ~/completion-for-pnpm.zsh' >> ~/.zshrc
elif [ -n "$BASH_VERSION" ]; then
    pnpm completion bash > ~/completion-for-pnpm.bash
    echo 'source ~/completion-for-pnpm.bash' >> ~/.bashrc
fi

echo "Development environment setup complete!"
echo "You can now run:"
echo "  pnpm dev    - Start development server"
echo "  pnpm build  - Build for production"
echo "  pnpm lint   - Run linter"