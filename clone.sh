#!/bin/bash

GITHUB_USER="ch840120"
TARGET_DIR="/c/github-repo"

echo "== 腳本啟動 =="
echo "目標帳號: $GITHUB_USER"
echo "目標資料夾: $TARGET_DIR"

mkdir -p "$TARGET_DIR"
echo "目標資料夾建立完成（若已存在則無動作）"

page=1

while :; do
    echo "========== 取得第 $page 頁 repo =========="
    api_url="https://api.github.com/users/$GITHUB_USER/repos?per_page=100&page=$page"
    echo "API URL: $api_url"
    api_result=$(curl -s "$api_url")
    echo "API 回傳長度: ${#api_result}"

    # 印出部份 API 回傳內容方便 debug
    echo "$api_result" | head -n 10

    repos=$(echo "$api_result" | grep '"name":' | cut -d '"' -f 4)
    echo "這一頁抓到 repo 名稱如下："
    echo "$repos"

    [ -z "$repos" ] && echo "（本頁無 repo，結束迴圈）" && break

    for repo in $repos
    do
        echo "---"
        echo "處理 repo: $repo"
        if [ -d "$TARGET_DIR/$repo" ]; then
            echo "本地已有 $repo，略過。"
        else
            echo "開始 clone $repo 到 $TARGET_DIR ..."
            git clone "git@github.com:$GITHUB_USER/$repo.git" "$TARGET_DIR/$repo"
        fi
    done

    ((page++))
done

echo "全部處理完畢！"
read -p "請按 Enter 結束..."