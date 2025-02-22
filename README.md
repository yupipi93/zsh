# Guía de Instalación y Configuración de Zsh en Ubuntu

## Actualizar los paquetes
```bash
sudo apt update
```

## Instalar Zsh
```bash
sudo apt install zsh -y
```
## Hacer Zsh como tu shell predeterminado
```bash
chsh -s $(which zsh)
```
### Nota: Después de ejecutar este comando, tendrás que cerrar sesión y volver a iniciarla para que el cambio tenga efecto.

## Instalar Oh-My-Zsh
```bash
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```
### Nota: Este script ejecutará automáticamente la configuración de Oh-My-Zsh.

## Instalar zsh-autosuggestions Plugin
```bash
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
```

## Instalar zsh-syntax-highlighting Plugin
```bash
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
```

## Configurar los plugins en .zshrc
```bash
sed -i '/^plugins=(git)$/c\plugins=(git z zsh-syntax-highlighting zsh-autosuggestions docker sudo web-search gcloud terraform)' ~/.zshrc && source ~/.zshrc
```

## [Opcional] Descargar las fuentes Meslo Nerd Font
### Nota: Después de instalar las fuentes, configura tu terminal para usar 'MesloLGS NF' como la fuente por defecto.
```bash
mkdir -p ~/.local/share/fonts
cd ~/.local/share/fonts
curl -fLo "MesloLGS NF Regular.ttf" https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Regular.ttf
curl -fLo "MesloLGS NF Bold.ttf" https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold.ttf
curl -fLo "MesloLGS NF Italic.ttf" https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Italic.ttf
curl -fLo "MesloLGS NF Bold Italic.ttf" https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold%20Italic.ttf
fc-cache -f -v
```
## Instalar el tema Powerlevel10k
```bash
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
```
## Añadir powerlevel10k como tema
```bash
sed -i '/ZSH_THEME=/c\ZSH_THEME="powerlevel10k/powerlevel10k"' ~/.zshrc
```
## Recargar la configuración de Zsh
### Nota: Este comando inicia un proceso interactivo. Sigue las instrucciones en pantalla para personalizar tu prompt.
```bash
source ~/.zshrc
```
## Puedes volver a configurar Powerlevel10k con este comando
```bash
p10k configure
```

## Add Aliases
```bash
#bat
export PATH="/home/sergioconejero/.local/bin/bat:$PATH"
alias bat='batcat'
```

### Nota: Este comando aplica los cambios realizados en .zshrc sin necesidad de reiniciar la terminal.

# Recordatorio: Asegúrate de tener una conexión a internet activa y permisos de administrador para ejecutar estos comandos.
