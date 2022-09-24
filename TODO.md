# TODO brbinstall

## Potential improvements
* The script could be executed from the main directory  
* Rearrange the whole structure (once again)
  * some blocks of code could be functions (avoid repetitions)
  * huge improvement over some awfully made functions
    * functions adding pkgs (add a new function checking if the package is already there)
* add comments & maybe better naming

## README
* A better README with imgs (to show flavor for example)

## neomint
* The middle click on cinnamon bar could be auto with json in this file : ~/.cinnamon/configs/grouped-window-list@cinnamon.org/2.json  
* Cleaning old kernel in mintupdate could be done automatically with a link (probably won't be done)
* Update the script so it could work on any de, any distro, without flatpak, etc...
* Change default apps with mime ? (cat ~/.config/mimeapps.list)
* Default numlock with gsettings
* More detailed README (displayed at the beginning of the script)

## theming
* Update aio and yaru (delete old files, use only icons or cinnamon-shell, etc...)
* Full yaru theming with a flavor ? (plasma too ?)
* Update of flavoring to be in theming instead
* Add cursor theming ? (captain ?)
* Add font theming ? (ubuntu, spline, font-awesome, nerd-fonts, hack, fira, Source code pro, etc...) [help](https://www.linux.com/topic/desktop/how-manage-fonts-linux/)
* redo gterminal.sh
* synchronize themes again (color-schemes and all, update flavors, etc...)
* superhot theme on i3? terminal(cool retro term) & all + opensuse theme opensus amogos + i3-gaps similar to one dwm theme

## r3 i3 and related
* polybar [help1](https://github.com/polybar/polybar/wiki) [help2](https://www.youtube.com/watch?v=cLB008-FJ5o)
* Update r3 (to setup everything : kitty, polybar, picom, i3-config) and create a i3-setup instead
* polybar : pavucontrol font-awesome and other fonts and use nm-applet to display network

## Arch
* Update it (finish auto-pacman setup)

## Debian
* Update the scripts and add testing/sid scripts, do a sort of neomint ?, check spirallinux

## Misc
* redact a validation test for distributions
* add kde setup for neomint ? (kde-plasma-desktop, plasma-nm)
