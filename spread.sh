#!/bin/bash

ROOT_DIR=$(cd "$(dirname "$0")" || exit; pwd)


# set dotfiles in WSL2
sudo cp "${ROOT_DIR}"/wsl2/wsl.conf /etc/
cp "${ROOT_DIR}"/wsl2/.bashrc "${HOME}"
cp "${ROOT_DIR}"/wsl2/.vimrc "${HOME}"
cp "${ROOT_DIR}"/wsl2/coc-settings.json "${HOME}"/.vim


# set dotfiles in Windows
WIN_USER=kkirino
WIN_HOME_DIR=/mnt/c/Users/"${WIN_USER}"
NVIM_DIR="${WIN_HOME_DIR}"/AppData/Local/nvim/
PS_PROFILE_DIR="${WIN_HOME_DIR}"/Documents/WindowsPowerShell/
[ -d "${NVIM_DIR}" ] || mkdir -p "${NVIM_DIR}"
cp "${ROOT_DIR}"/windows/init.vim "${NVIM_DIR}"
cp "${ROOT_DIR}"/windows/settings.json "${WIN_HOME_DIR}"/AppData/Roaming/Code/User
[ -d "${PS_PROFILE_DIR}" ] || mkdir -p "${PS_PROFILE_DIR}"
cp "${ROOT_DIR}"/windows/Microsoft.PowerShell_profile.ps1 "${PS_PROFILE_DIR}"
