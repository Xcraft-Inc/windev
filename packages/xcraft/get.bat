@echo off

if exist %pkg_cache% goto cache_

setlocal enabledelayedexpansion

if [%pkg_host%]==[] (
  echo Choose a Git host for Xcraft ^(default: github.com^)
  echo For Epsitec SA, provide git.epsitec.ch
  set /p pkg_host=
  if [!pkg_host!]==[] (
    set pkg_host=github.com
    set pkg_path=Xcraft-Inc/xcraft.git
  )
)

if [!pkg_path!]==[] (
  echo Choose a Git path for Xcraft ^(default: Xcraft-Inc/xcraft.git^)
  echo For Epsitec SA, provide xcraft/xcraft.git
  set /p "pkg_path="
  if [!pkg_path!]==[] (
    set pkg_path=Xcraft-Inc/xcraft.git
  )
)

set pkg_src=!pkg_host!/!pkg_path!

git remote get-url origin | findstr https://
if [%errorlevel%]==[0] (
  :connect_
  echo Enter your git.epsitec.ch username:
  set /p login=

  git clone --recursive https://!login!@!pkg_src! %pkg_dst%
  if not [%errorlevel%]==[0] goto connect_
) else (
  git clone --recursive git@!pkg_host!:!pkg_path! %pkg_dst%
)

endlocal
exit /b

:cache_

call xcopy %pkg_cache% %pkg_dst% /s /e /h /i
