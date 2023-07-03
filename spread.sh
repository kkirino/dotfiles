#!/bin/bash

ROOT_DIR=$(cd "$(dirname "$0")" || exit; pwd)


# WSL2 の各種 dotfiles を配置する
sudo cp "${ROOT_DIR}"/wsl2/wsl.conf /etc/
cp "${ROOT_DIR}"/wsl2/.bashrc "${HOME}"
cp "${ROOT_DIR}"/wsl2/.vimrc "${HOME}"
cp "${ROOT_DIR}"/wsl2/coc-settings.json "${HOME}"/.vim


# Windows の各種 dotfiles を配置する
WIN_USER=kkirino
WIN_HOME_DIR=/mnt/c/Users/"${WIN_USER}"
# Neovim
NVIM_DIR="${WIN_HOME_DIR}"/AppData/Local/nvim/
[ -d "${NVIM_DIR}" ] || mkdir -p "${NVIM_DIR}"
cp "${ROOT_DIR}"/windows/init.vim "${NVIM_DIR}"
# VSCode
cp "${ROOT_DIR}"/windows/settings.json "${WIN_HOME_DIR}"/AppData/Roaming/Code/User
# Windows PowerShell (不要であれば以下の 3 行をコメントアウト)
WPS_PROFILE_DIR="${WIN_HOME_DIR}"/Documents/WindowsPowerShell/
[ -d "${PS_PROFILE_DIR}" ] || mkdir -p "${WPS_PROFILE_DIR}"
cp "${ROOT_DIR}"/windows/Microsoft.PowerShell_profile.ps1 "${WPS_PROFILE_DIR}"
# PowerShell (不要であれば以下の 3 行をコメントアウト)
PS_PROFILE_DIR="${WIN_HOME_DIR}"/Documents/PowerShell/
[ -d "${PS_PROFILE_DIR}" ] || mkdir -p "${PS_PROFILE_DIR}"
cp "${ROOT_DIR}"/windows/Microsoft.PowerShell_profile.ps1 "${PS_PROFILE_DIR}"
