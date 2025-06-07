# # ベースイメージとしてNode.jsを使用
# FROM node:22-slim

# # 作業ディレクトリを設定
# WORKDIR /workspace

# # package.jsonとpnpm-lock.yamlのみを先にコピー
# # これにより、依存関係が変更されない限りキャッシュが使われる
# COPY workspace/package.json ./
# COPY workspace/pnpm-lock.yaml ./

# # pnpmをインストールし、依存関係をインストール
# RUN npm install -g pnpm && \
#     pnpm install --frozen-lockfile && \
#     pnpm store prune

# # 不要なファイルをクリーンアップ
# RUN npm cache clean --force

# # コンテナを起動し続けるためのコマンド
# CMD ["tail", "-f", "/dev/null"]



FROM node:22-slim
WORKDIR /workspace
# 依存関係のインストールを一時的にスキップ
CMD ["tail", "-f", "/dev/null"]