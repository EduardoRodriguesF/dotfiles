# Eduardo's Dotfiles

Unix development setup.

![Terminal screenshot](https://user-images.githubusercontent.com/44787022/230793846-f042563e-6c92-4bb8-bd20-fd7dd5d5bfc3.png)
> Screenshot from Windows Terminal using [Omni](https://github.com/getomni/windows-terminal) theme and [JetBrains Mono](https://www.jetbrains.com/lp/mono/) font family.

## Features

Below is a list of the packages you might need to install to make things work.

- asdf-vm
- bat
- exa
- fzf
- [neovim](https://github.com/EduardoRodriguesF/nvim)
- starship
- tmux
- zoxide
- zsh
- atuin
- thefuck

Ensure they are all installed using your preferred package manager, and don't forget to upgrade your packages before doing so!

## Installation

### 1. Download files

You can easily cURL my files into your machine! Just run the command below:

```bash
curl -Lks https://gist.githubusercontent.com/EduardoRodriguesF/600ed2f94ad4bdba947fbdf0ca698a9e/raw | bash
```

Alternatively, you can access the gist [here](https://gist.github.com/EduardoRodriguesF/600ed2f94ad4bdba947fbdf0ca698a9e) and execute directly in your terminal.

### 2. Set default shell

If you don't use `zsh` yet, run the command below to make it your default shell:

```bash
chsh -s $(which zsh)
```

### Will I lose my files?

Nothing will be deleted nor overwritten! Every file that causes conflict will be moved to `~/.dotfiles-backup` so the checkout goes smoothly.

## Tools I Use

- **Audio management**: [pamixer](https://github.com/cdemoulins/pamixer)

## For i3

- rofi
