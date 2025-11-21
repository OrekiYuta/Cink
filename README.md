# Cink

WIP

## Windows auto deploy
```bat
@echo off
color 0a

REM Set the repository path
set REPO_PATH=<repo_path>

REM Change directory to the repository (also switches drive if needed)
cd /d "%REPO_PATH%"

REM Clean Hexo cache
hexo clean

REM Generate static files
hexo g

REM Deploy to the branch specified in _config.yml (default is master)
hexo d

REM Wait for 3 seconds before closing
timeout /t 3 /nobreak

```