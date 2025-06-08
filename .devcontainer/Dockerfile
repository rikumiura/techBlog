# ベースイメージとしてNode.jsを使用
FROM node:22-slim

# 必要なパッケージをインストール
RUN apt-get update && apt-get install -y \
    git \
    curl \
    procps \
    ca-certificates \
    && rm -rf /var/lib/apt/lists/* \
    && apt-get clean

# pnpmをグローバルにインストール
RUN npm install -g pnpm@latest

# 作業ディレクトリを設定
WORKDIR /workspace

# nodeユーザーに権限を付与
RUN chown -R node:node /workspace

# nodeユーザーに切り替え
USER node

# コンテナを起動し続けるためのコマンド（何もインストールしない）
# CMD ["pnpm --workdir workspace" "run" "dev"]