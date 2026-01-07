#!/bin/bash

echo "🤢 Installing git-vommit..."

# インストール先（一般的に /usr/local/binが使われる）
INSTALL_DIR="/usr/local/bin"
SCRIPT_NAME="git-vommit"

# 1. 実行権限を付与
chmod +x "$SCRIPT_NAME"

# 2. パスの淘汰場所にコピー（管理者権限が必要な場合があるためsudoを使う）
echo "Copying to $INSTALL_DIR (Password might be required)"
sudo cp "$SCRIPT_NAME" "$INSTALL_DIR/$SCRIPT_NAME"

# 3. 完了メッセージ
if [ $? -eq 0]; then
    echo ""
    echo "✅ Success! You can now run 'git vommit' anywhere."
    echo " Try typing: git vommit"
else
    echo ""
    echo "❌ Installation failed."
fi