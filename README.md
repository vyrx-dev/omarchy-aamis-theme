# ⛱ MacOs Theme for Omarchy — macOS Look

A thoughtfully crafted theme collection for [Omarchy](https://omarchy.org), bringing the quintessential **macOS Light Mode** and **Liquid Glass** aesthetic to your Linux setup.

> _"Aamis — The refined macOS look for Omarchy."_ — by [marexxxxxxx](https://github.com/marexxxxxxx)

## 🎨 The "Liquid Glass" Aesthetic

Aamis is designed to replicate the signature macOS feeling. Every detail is meticulously crafted to blend elegance with functionality:

- **Liquid Glass & Transparency:** Utilizing subtle glass-like blur effects and a ~0.90 opacity for terminals to create depth and a modern, airy feel.
- **Crisp & Clean:** Featuring crisp white backgrounds paired with classic Apple blue accents that highlight focus and clarity.
- **Soft Geometry:** Menus and UI elements feature ~20px rounded corners, softening the interface and matching the modern macOS design language.
- **Omarchy Philosophy First:** While we deeply embrace the macOS aesthetic, we have intentionally omitted the traditional macOS "traffic light" window controls (red, yellow, green buttons). This decision ensures the theme remains true to Omarchy's opinionated, clean, and distraction-free workflow.

---

## 📸 Preview

|            Lazygit             |           BTOP           |             Nvim             |
| :----------------------------: | :----------------------: | :--------------------------: |
| ![Lazygit](assets/lazygit.png) | ![Btop](assets/btop.png) | ![Neovim](assets/neovim.png) |

![Omarchy homescreen setup](./assets/homescreen.png)
![Omarchy btop](./assets/setup.png)

---

## 🎨 Color Palette

![Aamis Color Palette](./assets/pallete.png)

---

## 🚀 Installation

### Quick Setup (Recommended)

Install and configure the complete Aamis theme in one go:

```bash
# 1. Install the theme
omarchy theme install https://github.com/marexxxxxxx/omarchy-mac.git

# 2. Run the post-install setup (configures Walker, Waybar, etc.)
bash ~/.config/omarchy/themes/aamis/.omarchy-install ~/.config/omarchy/themes/aamis

# 3. Apply the theme
omarchy theme set aamis
```

That's it! Your app launcher (Walker) and menu bar (Waybar) now have the macOS Liquid Glass look. ✨

### Auto-Configuration Hook (Optional)

This repository includes a hook script at `.config/omarchy/hooks/theme-set` that configures Walker and Waybar automatically when `omarchy theme set aamis` runs.

If you installed the theme through Omarchy, enable the hook like this:

```bash
mkdir -p ~/.config/omarchy/hooks
cp ~/.config/omarchy/themes/aamis/.config/omarchy/hooks/theme-set ~/.config/omarchy/hooks/theme-set
chmod +x ~/.config/omarchy/hooks/theme-set
```

If you cloned the repo manually, use the bundled installer instead:

```bash
git clone https://github.com/marexxxxxxx/omarchy-mac.git
cd omarchy-mac
./install.sh
omarchy theme set aamis
```

That script copies the entire repo into `~/.config/omarchy/themes/aamis`, installs the hook, and runs the post-install setup for Walker and Waybar.

### Manual Clone Installation

If you want to do the steps yourself instead of using `install.sh`:

```bash
# Clone repo
git clone https://github.com/marexxxxxxx/omarchy-mac.git
cd omarchy-mac

# Copy the theme into Omarchy themes
mkdir -p ~/.config/omarchy/themes/aamis
rsync -a --exclude='.git' ./ ~/.config/omarchy/themes/aamis/

# Install the hook
mkdir -p ~/.config/omarchy/hooks
cp .config/omarchy/hooks/theme-set ~/.config/omarchy/hooks/theme-set
chmod +x ~/.config/omarchy/hooks/theme-set

# Copy walker config from repo
mkdir -p ~/.config/walker
cp walker/config.toml ~/.config/walker/config.toml

# Run the theme installer for walker/waybar setup
bash ~/.config/omarchy/themes/aamis/.omarchy-install ~/.config/omarchy/themes/aamis

# Apply the theme
omarchy theme set aamis
```

### Repo Contents for Walker Support

This repo includes the Walker theme assets and hook script in these locations:

- `walker/themes/aamis/style.css`
- `.config/omarchy/hooks/theme-set`
- `.omarchy-install`
- `install.sh`
- `waybar.css`
- `waybar.jsonc`

### Manual Installation

If you prefer to install components individually:

```bash
# Install the theme
omarchy theme install https://github.com/marexxxxxxx/omarchy-mac.git

# Apply the theme
omarchy theme set aamis

# Optionally configure Walker for macOS look:
mkdir -p ~/.config/walker/themes/aamis
cp ~/.config/omarchy/themes/aamis/walker/themes/aamis/style.css ~/.config/walker/themes/aamis/
sed -i 's/theme = "omarchy-default"/theme = "aamis"/' ~/.config/walker/config.toml
omarchy restart walker

# Waybar is automatically configured
```

### Vesktop Theme

For Vesktop users, you can install this theme by copying the theme file to your Vesktop themes directory:

```bash
cd ~/.config/omarchy/themes/aamis/

cp vencord.theme.css ~/.config/vesktop/themes/Aamis.theme.css
```

### Vicinae Theme

To use Aamis in [Vicinae](https://vicinae.com) without touching existing themes:

```bash
# Create directories if they don't exist (safe if they already do)
mkdir -p ~/.local/share/vicinae/themes/icons

cp vicinae.toml ~/.local/share/vicinae/themes/aamis.toml
cp assets/icons/aamis-icon-transparent-bg.png \
  ~/.local/share/vicinae/themes/icons/aamis-theme-icon.png
```

### Typora Theme

In Typora, simply set the Theme in the *Themes* option after copying the CSS file:

```bash
cp aamis.css ~/.config/Typora/aamis.css
```

---

## 🙏 Acknowledgments

This theme was created using [Aether](https://github.com/bjarneo/aether) by [@bjarneo](https://github.com/bjarneo).

The Vicinae theme and logo were provided by [@lukapmoran](https://github.com/lukapmoran).

The Typora theme was contributed by [@pymmog](https://github.com/pymmog).

The VS Code theme was contributed by [@fedesapuppo](https://github.com/fedesapuppo).

## Walker Theme (App Launcher)

The Aamis theme provides a beautiful macOS-style app launcher with Liquid Glass transparency and smooth rounded corners.

✨ **Now Automatic!** When you run the post-install setup (see Installation section), Walker is automatically configured with the Aamis theme.

If you manually installed the theme and want to set it up now:

```bash
# Create walker theme directory
mkdir -p ~/.config/walker/themes/aamis

# Copy the theme CSS
cp ~/.config/omarchy/themes/aamis/walker/themes/aamis/style.css ~/.config/walker/themes/aamis/

# Update walker config to use the theme
sed -i 's/theme = "omarchy-default"/theme = "aamis"/' ~/.config/walker/config.toml

# Restart walker
omarchy restart walker
```

## Waybar Theme

This theme provides a completely customized macOS-style Waybar setup featuring floating "liquid glass" modules.

✨ **Now Automatic!** When you run the post-install setup (see Installation section), the Waybar layout is automatically configured for you.

If you manually installed the theme and want to set it up now:

```bash
# Backup existing config (optional)
cp ~/.config/waybar/config.jsonc ~/.config/waybar/config.jsonc.bak

# Copy the macOS layout from the theme directory
cp ~/.config/omarchy/themes/aamis/waybar.jsonc ~/.config/waybar/config.jsonc

# Reload waybar
omarchy restart waybar