# Actualizar los paquetes
sudo apt update

# Instalar Zsh
sudo apt install zsh -y

# Hacer Zsh como tu shell predeterminado
chsh -s $(which zsh)
# Nota: Después de ejecutar este comando, tendrás que cerrar sesión y volver a iniciarla para que el cambio tenga efecto.

# Instalar Oh-My-Zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
# Nota: Este script ejecutará automáticamente la configuración de Oh-My-Zsh.

# Instalar el tema Powerlevel10k
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

# [Opcional] Descargar las fuentes Meslo Nerd Font
# Nota: Después de instalar las fuentes, configura tu terminal para usar 'MesloLGS NF' como la fuente por defecto.
mkdir -p ~/.local/share/fonts
cd ~/.local/share/fonts
curl -fLo "MesloLGS NF Regular.ttf" https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Regular.ttf
curl -fLo "MesloLGS NF Bold.ttf" https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold.ttf
curl -fLo "MesloLGS NF Italic.ttf" https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Italic.ttf
curl -fLo "MesloLGS NF Bold Italic.ttf" https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold%20Italic.ttf
fc-cache -f -v

# Configurar Powerlevel10k
p10k configure
# Nota: Este comando inicia un proceso interactivo. Sigue las instrucciones en pantalla para personalizar tu prompt.

# Configurar los plugins en .zshrc
echo "plugins=(git z zsh-syntax-highlighting zsh-autosuggestions docker sudo web-search copyfile jsontools)" >> ~/.zshrc

# Recargar la configuración de Zsh
source ~/.zshrc
# Nota: Este comando aplica los cambios realizados en .zshrc sin necesidad de reiniciar la terminal.



# Recordatorio: Asegúrate de tener una conexión a internet activa y permisos de administrador para ejecutar estos comandos.
