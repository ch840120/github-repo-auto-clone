# 👨‍💻 github-repo-auto-clone

一鍵自動克隆多個 GitHub Repository 的小工具，適合懶人使用！✨

> 這個腳本會**透過 GitHub API 自動抓取 repo 名稱**，讓你不用手動整理 repo 連結，更加省時省力！

## 🌟 特色

- 🗂️ 支援一次複製多個 repo，不用一個一個慢慢 clone。
- ⏱️ 簡單指令即可完成。
- 👨‍💻 適合團隊開發、搬家或整理專案用。
- 🤖 自動透過 API 幫你取得 repo 名稱，零手動操作！

## 🛠️ 安裝方法

1. 下載或 clone 這個專案到你的電腦：
    ```bash
    git clone https://github.com/ch840120/github-repo-auto-clone.git
    ```
2. 進入專案資料夾：
    ```bash
    cd github-repo-auto-clone
    ```

## 📖 使用教學
1. 執行腳本：

- **macOS 或 Linux 使用者：**
  ```bash
  bash clone.sh
  ```

  ⚠️ Windows 用戶注意：
  請一定要在「WSL」（Windows Subsystem for Linux）或「Git Bash」環境下執行，
  不要在一般的 CMD 或 PowerShell 直接跑, 如果有設定Git Bash環境變數的話可以忽略！
  
  打開 Git Bash 或 WSL，然後執行：
  ```bash
  bash clone.sh
  ```
## ❗ 注意事項
- 🖥️ 請確保你的電腦已經安裝好 git。
- 🔑 若遇到權限問題，記得先設好 SSH key 或輸入帳密。
