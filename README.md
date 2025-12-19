# My Dotfiles

These are my personal dotfiles. They are managed using [GNU Stow](https://www.gnu.org/software/stow/).

## Requirements

This setup configures the following programs:

*   Fish
*   Ghostty
*   Neovim
*   Spicetify
*   Zellij
*   dconf (for GNOME users)

### Installation

Clone this repository to `~/.dotfiles`:

```bash
git clone https://github.com/majope94/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
```

Then, install the required programs for your distribution.

**Arch Linux**

```bash
yay -S fish neovim zellij dconf ghostty-bin spicetify-cli
```

**Debian / Ubuntu**

```bash
sudo apt update
sudo apt install fish neovim zellij dconf-cli
```
*Note: `ghostty` and `spicetify-cli` are not in the default Debian/Ubuntu repositories. You will have to build them from source or find a PPA.*
*For Spicetify, you can use the official installer:*
```bash
curl -fsSL https://raw.githubusercontent.com/spicetify/spicetify-cli/master/install.sh | sh
```
*For Ghostty on Ubuntu, use the inoffical installer*
```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/mkasberg/ghostty-ubuntu/HEAD/install.sh)"
```

**Fedora**

```bash
sudo dnf install fish neovim zellij dconf
```
*Note: `ghostty` and `spicetify-cli` are not in the default Fedora repositories. You will have to build them from source or find a COPR repository.*
*For Spicetify, you can use the official installer:*
```bash
curl -fsSL https://raw.githubusercontent.com/spicetify/spicetify-cli/master/install.sh | sh
```

## Usage

After installing the required programs, you can create the symlinks using `stow`:

```bash
stow .
```

For the dconf settings, load them with:

```bash
dconf load / < dconf_settings.ini
```
