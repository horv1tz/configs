#!/bin/bash

# Определение цветов
GREEN='\033[0;32m'
NC='\033[0m' # No Color

echo -e "${GREEN}[Обновление системы]${NC}"
sudo pacman -Syyu 

echo -e "${GREEN}[Установка ZSH]${NC}"
sudo pacman -S --needed zsh curl

echo -e "${GREEN}[Установка Oh-My-ZSH]${NC}"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo -e "${GREEN}[Установка плагинов]${NC}"
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

echo -e "${GREEN}[Установка конфига]${NC}"
cp config ~/.zshrc

echo
echo -e "${GREEN}[Установка прошла успешно]${NC}"

