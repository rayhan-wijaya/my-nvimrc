# my-nvimrc

everything you don't want in a neovim config--bundled up. i don't want to go too off-course off of the defaults (neo)vim establishes, since if i'm ssh'ing into something, i wouldn't want to solely depend on a bombarded config, but instead just baring with the defaults. and, weirdly, after trying this for 2 months, i found the defaults to be better!

## Setup

### Getting Packer ready

This neovim config relies on
[Packer](https://github.com/wbthomason/packer.nvim).

> #### Unix, Linux Installation
> 
> ```bash
> git clone --depth 1 https://github.com/wbthomason/packer.nvim\
>  ~/.local/share/nvim/site/pack/packer/start/packer.nvim
> ```
> 
> If you use Arch Linux, there is also an AUR package.
> 
> #### Windows Powershell Installation
> 
> ```bash
> git clone https://github.com/wbthomason/packer.nvim "$env:LOCALAPPDATA\nvim-data\site\pack\packer\start\packer.nvim"
> ```

### Cloning this repo

The location of the directory you'll be cloning to differs from OS to OS.

**On Linux or MacOS:**

```bash
git clone https://github.com/rayhan-wijaya/my-nvimrc ~/.config/nvim
```

**On Windows:**

```bash
git clone https://github.com/rayhan-wijaya/my-nvimrc ~\AppData\Local\nvim
```
