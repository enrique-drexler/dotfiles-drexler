#!/bin/bash

echo "🚀 Iniciando instalación de Dotfiles Drexler..."

# 1. Instalar dependencias necesarias
echo "📦 Instalando dependencias del sistema y SDDM..."
sudo pacman -S --needed hyprland kitty fish btop cava waypaper socat git sddm noto-fonts-cjk qt5-graphicaleffects qt5-quickcontrols2

# 2. Copiar configuraciones al usuario actual
echo "📁 Copiando configuraciones a ~/.config/..."
mkdir -p ~/.config
cp -r hypr ~/.config/
cp -r caelestia ~/.config/
cp -r kitty ~/.config/
cp -r fish ~/.config/
cp -r btop ~/.config/
cp -r cava ~/.config/
cp -r waypaper ~/.config/

# 3. Copiar Wallpapers
echo "🖼️ Copiando Wallpapers..."
mkdir -p ~/Imágenes/Wallpapers
cp -r Wallpapers/* ~/Imágenes/Wallpapers/

# 4. Instalar y configurar Makima SDDM
echo "😈 Configurando tema Makima-SDDM..."
if [ ! -d "/usr/share/sddm/themes/Makima-SDDM" ]; then
    sudo git clone https://github.com/Arnau029/Makima-SDDM.git /usr/share/sddm/themes/Makima-SDDM
fi

echo -e "[Theme]\nCurrent=Makima-SDDM" | sudo tee /etc/sddm.conf > /dev/null
sudo systemctl enable sddm
