# my-nvimrc

This is a repo that contains my neovim configurations, designed to be minimal
by disabling things like `ruler`, `showmode`, and other unnecessary
vim features. Really not much more than that.

The colorscheme used in this setup is
[Apprentice](https://github.com/romainl/Apprentice).

Quoted from a commit message I made about Apprentice:

> Man I love this. It's a contrast between other modern colorschemes. Other
> colorschemes focus on being cool or high-contrast. The low-contrast
> colorschemes I've seen are still too bright for me. This...this is
> different.
>
> In a way, this is especially useful when I'm writing LaTeX documents since
> the vibrant colors of other colorschemes usually distract me from the
> content. But apprentice was intentionally designed to be plain while still
> maintaining prettiness.

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
