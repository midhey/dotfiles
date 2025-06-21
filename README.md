# dotfiles

Персональный набор конфигов для терминала и шелла. Использую под macOS, Linux и WSL2. Тут всё, что мне нужно для комфортной работы: zsh, tmux, alacritty, iTerm2, Windows Terminal.

## Состав

- `.zshrc` — конфиг для zsh с Powerlevel10k, алиасами и автодополнением
- `.tmux.conf` — настройка tmux с Vim-навигацией, автоклипбордом и плагинами
- `alacritty.toml` — тема, биндинги и поведение для alacritty (**не обновляется**)
- `settings.json` — конфиг для Windows Terminal
- `iTerm2 State.itermexport` — полный экспорт всех настроек iTerm2

## Поддерживаемые платформы

| Платформа | Особенности                                           |
| --------- | ----------------------------------------------------- |
| macOS     | pbcopy/pbpaste, tmux, nvm                             |
| Linux     | xclip/xsel                                            |
| WSL2      | clip.exe, запуск Windows Terminal на `wsl.exe` и tmux |

## Быстрый старт

```bash
git clone https://github.com/midhey/dotfiles.git ~/dotfiles

# копируем конфиги
cp ~/dotfiles/.zshrc ~/.zshrc
cp ~/dotfiles/.tmux.conf ~/.tmux.conf

# alacritty
mkdir -p ~/.config/alacritty
cp ~/dotfiles/.config/alacritty/alacritty.toml ~/.config/alacritty/
```

Для Windows Terminal — копировать `settings.json` в `AppData\Local\Packages\...`

Для iTerm2 — открыть настройки, вкладка `General`, и нажать "Import All Settings and Data..."

## Zsh-плагины

- oh-my-zsh
- powerlevel10k
- zsh-autosuggestions
- zsh-syntax-highlighting

## tmux-плагины

- tpm
- tmux-resurrect
- tmux-continuum
- tmux-yank

## Структура

```bash
dotfiles/
├── .zshrc
├── .tmux.conf
├── .config/
│   └── alacritty/
│       └── alacritty.toml
├── WindowsTerminal/
│   └── settings.json
├── iterm2/
│   └── iTerm2 State.itermexport
└── README.md
```
