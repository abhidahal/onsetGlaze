
<h1>🎨 onsetGlaze</h1>


**onsetGlaze** is a ColorScheme for Nvim heavily inspired by syntax highlighting from [Monkai Pro](https://monokai.pro/) theme for VScode and transparent effect from [NeoSolarized](https://github.com/Tsuzat/NeoSolarized.nvim). Includes
extra themes for Kitty, Alacritty and Konsole.

![image](https://user-images.githubusercontent.com/87414003/205141099-5b00758e-8cc0-4e27-9dda-8dea84a0beeb.png)

## 🪄 Features

- Transparent background in windows terminal.
- supports the latest Neovim 5.0 features like TreeSitter and LSP
- better syntax highlighting
- **lualine** theme

## 🛠️ Requirements

- Neovim >= 0.6.0
- Windows Terminal for glass effect

## ⚙️ Installation

Install the theme with your preferred package manager:

[vim-plug](https://github.com/junegunn/vim-plug)

```vim
Plug 'abhidahal/onsetGlaze.nvim', { 'branch': 'main' }
```

[packer](https://github.com/wbthomason/packer.nvim)

```lua
use ('abhidahal/onsetGlaze.nvim')
```

## ❇️ Usage

Enable the colorscheme:

```vim
" Vim Script
colorscheme onsetGlaze
```

```lua
-- Lua
vim.cmd[[colorscheme onsetGlaze]]
```
