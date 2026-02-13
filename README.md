# Engrammer plugin

This plugin remaps keys in `zsh`'s [`vi`-style navigation mode](http://zsh.sourceforge.net/Doc/Release/Zsh-Line-Editor.html#Keymaps) using the **htsn** layout - a minimal 4-key arrow cluster:

- **h** → down
- **t** → up
- **s** → left
- **n** → right

This mirrors the home-row position of arrow keys, similar to how Colemak arranges navigation keys.

## Installation

Clone this repository and add it to your Oh My Zsh plugins:

```bash
git clone https://github.com/ball0803/zsh-engrammer \
${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-engrammer
```

Then add `zsh-engrammer` to your plugins array in `~/.zshrc`:

```zsh
plugins=(... zsh-engrammer)
```

You will also need to enable `vi` mode in your `~/.zshrc`:

```zsh
bindkey -v
```

Restart your shell or run `source ~/.zshrc` to apply changes. Press `<ESC>` to enter navigation mode and use the htsn keys to move.

## Requirements

- [Oh My Zsh](https://ohmyzsh/)
- Vi mode enabled (`bindkey -v`)

## Key bindings for vicmd

| Old (QWERTY) | New (htsn) | Binding                   | Description                                        |
|--------------|------------|---------------------------|----------------------------------------------------|
| `j`          | `h`        | down-line-or-history      | Move one line down or command history forwards     |
| `k`          | `t`        | up-line-or-history        | Move one line up or command history backwards      |
| `h`          | `s`        | vi-backward-char         | Move one character to the left                     |
| `l`          | `n`        | vi-forward-char          | Move one character to the right                    |

## Key bindings for insert mode (Ctrl)

| Shortcut   | Binding                   | Description                                        |
|------------|---------------------------|----------------------------------------------------|
| `Ctrl+h`   | down-line-or-history      | Move one line down or command history forwards     |
| `Ctrl+t`   | up-line-or-history        | Move one line up or command history backwards     |
| `Ctrl+s`   | vi-backward-char         | Move one character to the left                     |
| `Ctrl+n`   | vi-forward-char          | Move one character to the right                    |

## Key bindings for less

| Keyboard shortcut | `less` key binding |
|-------------------|--------------------|
| `h`               | forw-line          |
| `t`               | back-line          |
| `s`               | repeat-search      |
| `n`               | reverse-search     |
| `j`               | forw-line          |
| `k`               | back-line          |

## See Also

- [Colemak plugin](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/colemak) - Similar project with more comprehensive keybindings for the full Colemak layout
