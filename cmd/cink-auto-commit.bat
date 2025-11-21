@echo off
color 0a

REM Set the repository path
set REPO_PATH=F:\Code\1.MyGitHub\Cink

REM Change directory to the repository (also switches drive if needed)
cd /d "%REPO_PATH%"

REM Add all changes to Git
call git add .

REM Commit with current date and time
call git commit -m "ci(local): auto commit at %date:~0,4%-%date:~5,2%-%date:~8,2% %time:~0,8%"

REM Push to current branch
call git push

REM Clean Hexo cache
call hexo clean

REM Generate static files
call hexo g

REM Deploy to the branch specified in _config.yml (default is master)
call hexo d