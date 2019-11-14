#!/bin/bash
set -e

# 【ポイント】 tmp/pids/server.pid プロセスIDファイル
# `tmp/pids/server.pid` はRails開発用サーバーを起動する際に作成するプロセスIDファイル
# 開発用サーバーが正常終了されなかったとき（開発用サーバーを起動したままDockerコンテナを停止するなど）、削除されずに残ることがある。
# > A server is already running. Check /myapp/rails-app/tmp/pids/server.pid.
rm -f /myapp/tmp/pids/server.pid

# Then exec the container's main process (what's set as CMD in the Dockerfile).
exec "$@"
