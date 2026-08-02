# 🌌 CachyOS + Hyprland + Caelestia Shell (Dotfiles Drexler)

Un entorno altamente personalizado (*rice*) basado en **CachyOS**, impulsado por **Hyprland** y la **Caelestia Shell**, enfocado en una estética anime oscura con acentos neón rosa/violeta.

---

## 🎨 Showcase Video

[![CachyOS Caelestia Showcase](https://img.youtube.com/vi/Qr5dRCT_0Zw/maxresdefault.jpg)](https://youtu.be/Qr5dRCT_0Zw)

> 🎬 **[Haz clic aquí o en la imagen para ver el video completo en YouTube](https://youtu.be/Qr5dRCT_0Zw)**

---

## 📁 Estructura del Repositorio

* **`hypr/`** — Configuración de Hyprland (reglas, atajos, gestos).
* **`caelestia/`** — Tema, widgets y barra personalizada de Caelestia Shell.
* **`kitty/`** — Transparencias, fuentes y colores de terminal.
* **`fish/`** — Aliases y shell Fish.
* **`btop/`** & **`cava/`** — Estilos para monitor de sistema y visualizador de audio.
* **`waypaper/`** — Selección de fondos de pantalla.
* **`Wallpapers/`** — Colección de fondos estáticos y animados (mpvpaper).

---

## 🚀 Guía de Instalación para Usuarios

### 1. Instalar Dependencias (CachyOS / Arch Linux)
```fish
sudo pacman -S hyprland kitty fish btop cava pipes.sh cmatrix tty-clock waypaper socat

# Clonar temporalmente
git clone [https://github.com/enrique-drexler/dotfiles-drexler.git](https://github.com/enrique-drexler/dotfiles-drexler.git) ~/dotfiles-temp

# Copiar configuraciones a ~/.config/
cp -r ~/dotfiles-temp/hypr ~/.config/
cp -r ~/dotfiles-temp/caelestia ~/.config/
cp -r ~/dotfiles-temp/kitty ~/.config/
cp -r ~/dotfiles-temp/fish ~/.config/
cp -r ~/dotfiles-temp/btop ~/.config/
cp -r ~/dotfiles-temp/cava ~/.config/
cp -r ~/dotfiles-temp/waypaper ~/.config/

# Copiar Fondos de Pantalla
mkdir -p ~/Imágenes/Wallpapers
cp -r ~/dotfiles-temp/Wallpapers/* ~/Imágenes/Wallpapers/

# Limpiar directorio temporal
rm -rf ~/dotfiles-temp

Créditos
Equipo de CachyOS & Hyprland.

Proyecto original Caelestia Shell.

