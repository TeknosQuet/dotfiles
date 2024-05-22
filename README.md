# TeknosQuet's cwm dotfiles
## Install guide
### Install dependencies (assuming you use FreeBSD)
`pkg install xorg xinit dbus lsof setxkbmap xrandr xrdb xwallpaper xsetroot lemonbar-xft rofi xclip scrot font-awesome dejavu cwm git`
NOTE: this is for cwm, but it should work on other window managers in the repo by just installing them
### Move dotfiles to your users home directory (assuming you cloned to ~/dotfiles)
`mv ~/dotfiles/cwm/2/.* ~/`
`mv ~/dotfiles/cwm/2/* ~/`
### Notes for lemonbar in cwm/2
the battery indicator is tested working on a ThinkPad X250 and a T480 running FreeBSD 14.0 but it *should* work on everything
