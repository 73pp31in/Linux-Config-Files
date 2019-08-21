# Linux Config Files

## 1. VIM Config File (.vimrc)

### Plugins
VIM has several extension managers, but the one I like using is [Vundle](https://github.com/VundleVim/Vundle.vim). Think of it as pip for VIM. It makes installing and updating packages extremely easy.\
To install, run the following command:
```
sudo git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```

Now setup your vim using the config file given here:
```
cd /opt/
sudo git clone https://github.com/73pp31in/Linux-Config-Files.git
cd Linux-Config-Files
sudo cp vimrc ~/.vimrc
```

Now we need to install the already given plugins in your vim config using vundle.
```
vim
:PluginInstall
```

Thats it. You are all ready to use your vim with the given configuration. Ofcourse you can edit this in anyway you want, and add or remove the plugins or settings as per your requirements.

## 2. Tmux config (.tmux.conf)
Description Coming Soon!!
