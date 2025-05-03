Набор персональных конфигурационных файлов (`dotfiles`) для **macOS**, **Linux** и **WSL2**. 
Предназначен для быстрого развёртывания окружения, синхронизации настроек между машинами и резервного копирования.

## 📦 Состав

- **`.zshrc`** — оболочка `zsh` с Powerlevel10k, алиасами, безопасной логикой `$PATH`, автодополнением и платформенными настройками
    
- **`.tmux.conf`** — конфигурация `tmux` с плагинами, Vim-режимом, продвинутыми биндингами и автоопределением платформы (clipboard)
    
- **`alacritty.toml`** — кастомная конфигурация терминала `Alacritty` с цветовой схемой [`solarized-osaka`](https://github.com/craftzdog/solarized-osaka.nvim) и макросами для macOS, Linux и WSL
    

## 🖥️ Поддерживаемые платформы

|Платформа|Особенности|
|---|---|
|**macOS**|`pbcopy`, `tmux`, `nvm`, Powerlevel10k|
|**Linux**|`xclip` или `xsel`, стандартные пути|
|**WSL2**|Поддержка Windows clipboard (`clip.exe`), запуск Alacritty через `wsl` с `tmux`|

## 🚀 Быстрый старт

```bash
# Клонируем репозиторий
git clone https://github.com/midhey/dotfiles.git ~/dotfiles

# Копируем конфиги вручную
cp ~/dotfiles/.zshrc ~/.zshrc
cp ~/dotfiles/.tmux.conf ~/.tmux.conf
mkdir -p ~/.config/alacritty && cp ~/dotfiles/.config/alacritty/alacritty.toml ~/.config/alacritty/
```

> 💡 Для **Windows** (WSL) необходимо скопировать `alacritty.toml` в `C:\Users\<you>\AppData\Roaming\alacritty\alacritty.toml`

## ⚙️ Зависимости и плагины

### Zsh:

- [`oh-my-zsh`](https://github.com/ohmyzsh/ohmyzsh)
    
- [`powerlevel10k`](https://github.com/romkatv/powerlevel10k)
    
- [`zsh-autosuggestions`](https://github.com/zsh-users/zsh-autosuggestions)
    
- [`zsh-syntax-highlighting`](https://github.com/zsh-users/zsh-syntax-highlighting)
    

### Tmux:

- [`tpm`](https://github.com/tmux-plugins/tpm)
    
- `tmux-resurrect`, `tmux-continuum`, `tmux-yank`, `tmux-themepack`
    

## 🧠 Особенности

- `.tmux.conf` использует `if-shell` для автоопределения платформы (macOS / Linux / WSL) и подключения нужной clipboard-команды
    
- В `alacritty.toml` платформенно-зависимые блоки просто комментируются/раскомментируются вручную
    

## 📁 Структура

```bash
dotfiles/
├── .zshrc
├── .tmux.conf
├── .config/
│   └── alacritty/
│       └── alacritty.toml
└── README.md
```
