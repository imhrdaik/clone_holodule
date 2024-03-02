# Node.jsの公式イメージをベースとする
FROM node:alpine

# アプリケーションディレクトリを設定
WORKDIR /app

# アプリケーションの依存ファイルをインストール
COPY ./app/package*.json .
RUN npm install

# アプリケーションのソースをコピー
COPY ./app .

# アプリケーションをビルド
RUN npm run build

# 開発用サーバーを起動
CMD ["npm", "start"]
