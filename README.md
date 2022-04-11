## DWM Setup
![combined](https://user-images.githubusercontent.com/89152669/162796445-0438a374-60e4-4a7c-ace6-7d0222909c49.png)

*NOTE: wallpapers use sepparate directory, and they can be changed randomly*
<img src="https://i.imgur.com/B1pcWLD.png">

## Table of Contents

- [About ⁉️](#about)
- [Suckless applications 🟦](#suckless)
- [Dependencies ✅](#deps)
- [Keybinds ⌨️](#keys)

<a id="about"></a>

## ❗ Info

This is my first (almost) complete rice of arch linux using DWM. The main goal was to create a working machine as resource efficient as my needs allowed. This build doesn't have any widgets and visual fluff, (except picom). In idle mode ram consumtion is slightly below 400MB.

<img src="https://i.imgur.com/uY820t5.png" />

### 📒 Some notes:

+ There are many different themes that don't really fit together. DWM has a "Sea foam". For GTK I use [Sweet Dark](https://www.pling.com/p/1253385) theme, but terminal applications use [Dracula](https://github.com/dracula/dracula-theme), and in VSCodium this doesn't look as stylish as [One Dark Pro](https://marketplace.visualstudio.com/items?itemName=zhuangtongfa.Material-theme). 
+ My machine has both Windows and Linux so I dual boot and have [this](https://github.com/semimqmo/sekiro_grub_theme) cool looking grub theme with a different theme.txt
+ Apart from `ttf-font-awesome` that is found in select few places, there is also a [JoyPixels](https://archlinux.org/packages/community/any/ttf-joypixels/) font needed for displaying emojis, and any Japanese font that can view kanji. Terminal and VSCode font is Fira Code (with ligatures)

<a id="suckless"></a>

## 🟦 Suckless
First association that comes to mind after hearing "simple and minimalistic software" is Suckless. If you are willing to spend a lot of time manually adding pathces to programms, you will end up building a product that will feel as yours only, carefully crafted and functionally limited only by your imagination (for the most part). There is no configuration files, which means every time you edit a config.h, you **need to recompile**.

### [DWM](https://dwm.suckless.org/) patches:
 - **attachbottom** - new window is spawned as a slave and movs to the bottom;
 - **fullgaps** - add gaps between windows;
 - **cfacts** - resize slave windows;
 - **monoclesymbol** - changed to use my icon with addition to the number of currently oppened windows;
 - **movestack** - move windows;
 - **noborder** remove a border when only one window is visible;
 - **pertag** - window layout is set for each tag;
 - **resizecorners** - resize a window in floating mode from any corner;

### [ST](https://st.suckless.org/) patches:
- **bold is not bright** - bold text is rendered properly;
- **clipboard** - set clipboard on global selection;
- **scrollback** - ability to scroll up;
- **boxdraw** - render lines and block characters without the gap between them;
- **font2** - add more than 1 font;

### [Slstatus](https://tools.suckless.org/slstatus/)

A custom status bar. There are many alternatives, like dwmblocks that allow sending signals to each member and thus updating them only when needed, but slstatus is easier to configure lol. It relies on `xkblayout-state` to get a keymap, `pamixer` to display a volume, and `light` for screen brightness.

### [Dmenu](https://tools.suckless.org/dmenu/)

One of the best launchers out there. Its functionality is superb. Dmenu can be used more then just an application launcher. A clipboard manager such as [Clipmenu](https://github.com/cdown/clipmenu) can be implemented for a quick access. You can also create a custom shell script to display an emoji wheel, search the web, mount disks, manage music player and much much more!

### [Slock](https://tools.suckless.org/slock/)

Stupidly simple screen lock utility. It can be automatically activated by using Xautolock, one of sucklesses utilities, or directly be tied to systemd sleep and suspend signals. A new systemd unit will have to be created.

<a id="deps"></a>

## 📑 Details

+ **OS**: Arch
+ **Shell**: zsh + p10k
+ **Compositor**: [Jonaburg's](https://github.com/jonaburg/picom) fork of picom
+ **Editor**: VSCodium
+ **Browser**: Chromium
+ **File manager**: [nnn](https://github.com/jarun/nnn). Extension's dependencies: ```tree dragon-drop bat xclip```
+ **Image viewver**: sxiv
+ **Media player**: mpv
+ **PDF reader**: zathura
+ **Gestures**: touchegg
+ **Screenshoter**: flameshot
+ **Wallpaper**: nitrogen

<a id="keys"></a>

## Keybinds

<kbd>super</kbd> AKA Windows key is a modkey.

#### ⌨️ Keyboard

| Keybind | Function |
| --- | --- |
| <kbd>super + enter</kbd> | Spawn st |
| <kbd>super + r</kbd> | Launch dmenu |
| <kbd>super + f2</kbd> | Launch browser |
| <kbd>super + f3</kbd> | Launch code editor |
| <kbd>super + shift + e</kbd> | Opens emoji wheel in dmenu |
| <kbd>super + shift + c</kbd> | Opens clipmenu entries in dmenu |
| <kbd>super + w</kbd> | Close client |
| <kbd>super + b</kbd> | Hide/Show a bar |
| <kbd>super + f</kbd> | Toggle floating layout |
| <kbd>super + t</kbd> | Toggle tiling layout |
| <kbd>super + m</kbd> | Toggle monocle (single window) layout |
| <kbd>super + [q/e]</kbd> | Increase/Decrease master client (width) |
| <kbd>super + [z/c]</kbd> | Increase/Decrease a client in slave area (height) |
| <kbd>super + x</kbd> | Reset the size of a slave client |
| <kbd>super + [a/d]</kbd> | Focus next/previous client |
| <kbd>super + [i/o]</kbd> | Increase/Decrease the number of clients in slave area |
| <kbd>super + shift + [a/d]</kbd> | Move a client (inside a tag) |
| <kbd>super + [1-9]</kbd> | Go to a tag # |
| <kbd>super + shift + [1-9]</kbd> | Move a client to a tag # |
| <kbd>super + control + [1-9]</kbd> | Show a tags # along with a currently selected one |
| <kbd>super + 0</kbd> | Show all tags simultaniously |
| <kbd>super + [,/.]</kbd> | Focus a next/previous monitor |
| <kbd>super + shift + [,/.]</kbd> | Move a client to a next/previous monitor |
| <kbd>super + [-/=]</kbd> | Decrease/Increase the gaps between clients |
| <kbd>super + shift + =</kbd> | Reset gaps |

