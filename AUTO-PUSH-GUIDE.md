<!-- @format -->

# Automatic Git Push Setup

This repository now has automatic push functionality configured in multiple ways:

## 🚀 Current Setup

### 1. Manual Automatic Push Script

- **File**: `auto-push.sh`
- **Usage**: `./auto-push.sh`
- **Function**: Adds all changes, commits with timestamp, and pushes to remote

### 2. Git Post-Commit Hook

- **File**: `.git/hooks/post-commit`
- **Function**: Automatically pushes every commit to remote repository
- **Activation**: Runs automatically after each `git commit`

## 📋 How to Use

### Option 1: Use the Auto-Push Script

```bash
./auto-push.sh
```

This will:

- Check for changes
- Add all modified files
- Commit with timestamp
- Push to remote repository

### Option 2: Regular Git Commands (with Auto-Push)

```bash
git add .
git commit -m "Your commit message"
# The post-commit hook will automatically push!
```

### Option 3: Quick Commands

```bash
# For quick commits with auto-push
git commit -am "Your message"  # Hook will auto-push

# To disable auto-push temporarily
chmod -x .git/hooks/post-commit
# To re-enable
chmod +x .git/hooks/post-commit
```

## ⚙️ Configuration

- **Remote Repository**: https://github.com/Nisheshchy/Tharu.git
- **Default Branch**: main
- **Auto-push**: Enabled via post-commit hook

## 🔧 Troubleshooting

If auto-push fails:

1. Check internet connection
2. Verify GitHub credentials
3. Ensure you have push permissions to the repository
4. Check if the remote repository exists and is accessible

## 📝 Notes

- The post-commit hook will attempt to push after every commit
- If push fails, you'll see a warning but the commit will still be saved locally
- You can always push manually using `git push origin main`
