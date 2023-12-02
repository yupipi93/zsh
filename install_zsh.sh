#!/bin/bash

# Actualizar los paquetes
sudo apt update || true

# Instalar Zsh
sudo apt install zsh -y || true

# Hacer Zsh como tu shell predeterminado
chsh -s $(which zsh) || true

# Instalar Oh-My-Zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" || true

# Configurar los plugins en .zshrc
sed -i '/^plugins=(git)$/c\plugins=(git z zsh-syntax-highlighting zsh-autosuggestions docker sudo web-search copyfile jsontools)' ~/.zshrc || true

# Descargar las fuentes Meslo Nerd Font
mkdir -p ~/.local/share/fonts
cd ~/.local/share/fonts
curl -fLo "MesloLGS NF Regular.ttf" https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Regular.ttf || true
curl -fLo "MesloLGS NF Bold.ttf" https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold.ttf || true
curl -fLo "MesloLGS NF Italic.ttf" https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Italic.ttf || true
curl -fLo "MesloLGS NF Bold Italic.ttf" https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold%20Italic.ttf || true
fc-cache -f -v || true
cd - || true

# Instalar el tema Powerlevel10k
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k || true

# Añadir powerlevel10k como tema
sed -i '/ZSH_THEME=/c\ZSH_THEME="powerlevel10k/powerlevel10k"' ~/.zshrc || true

# Recargar la configuración de Zsh
source ~/.zshrc || true

# Puedes volver a configurar Powerlevel10k
p10k configure || true
