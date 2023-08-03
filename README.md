# Install zsh
```sh
sudo apt update
sudo apt install zsh
```

# Complete Switch from BASH to ZSH
```sh
sudo chsh -s /bin/zsh $(whoami)
```

### Check installation
```sh
sudo cat /etc/passwd | grep zsh 
```
### Make default
Execute and restart computer
```sh
chsh -s $(which zsh)
```


# Install ohmyzsh

```sh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

### Install zsh-autosuggestions
```sh
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
```

### Install zsh-syntax-highlighting
```sh
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
```



### Enable plugins
```sh
nano ~/.zshrc
```

### Refresh config
```sh
source ~/.zshrc
```

# Install theme 10k
https://github.com/romkatv/powerlevel10k#getting-started

```sh
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
```

### Restart Zsh with
```sh
exec zsh
```

### Configuration wizard
```sh
p10k configure
```

# Copy configured files (optional)
**.zshrc** and **.p10k.zsh** to ~/

```sh
cp .zshrc .p10k.zsh ~/
```
