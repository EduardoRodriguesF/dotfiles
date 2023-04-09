# Eduardo's Dotfiles

This is the setup I use for my ArchWSL environment.

I do tinker with it a lot, so a CHANGELOG will be available soon documenting any notable change.

![Terminal screenshot](https://user-images.githubusercontent.com/44787022/230793846-f042563e-6c92-4bb8-bd20-fd7dd5d5bfc3.png)
> Screenshot from Windows Terminal using [Omni theme](https://github.com/getomni/windows-terminal) and [JetBrains Mono font](https://www.jetbrains.com/lp/mono/).

## Features

Below is a list of the packages you might need to install to make things work.

- asdf
- bat
- exa
- fzf
- [neovim](https://github.com/EduardoRodriguesF/nvim)
- starship
- tmux
- zoxide
- zsh

Ensure they are all installed using your preferred package manager, and don't forget to upgrade your packages before doing so!

## Installation

You can easily cURL my files into your machine! Just run the command below:

```bash
curl -Lks https://gist.githubusercontent.com/EduardoRodriguesF/600ed2f94ad4bdba947fbdf0ca698a9e/raw | bash
```

Alternatively, you can access the gist [here](https://gist.github.com/EduardoRodriguesF/600ed2f94ad4bdba947fbdf0ca698a9e) and execute directly in your terminal.

### Will I lose my files?

Nothing will be deleted nor overwritten! Every file that causes conflict will be moved to `~/.dotfiles-backup` so the checkout goes smoothly.
