@echo off
call del %~dp0\public\*.* /f/s/q/a
call hexo g
call rename %~dp0\public\index.html index1.html
call move %~dp0\public\index1.html %~dp0\public\show
call move %~dp0\public\show\index.html %~dp0\public
call rename %~dp0\public\show\index1.html index.html
call hexo d
call ssh -v root@47.105.168.3
call nginx -s reload
call pause
