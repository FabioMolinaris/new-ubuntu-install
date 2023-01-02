#!/usr/bin/env bash

# thanks to https://gist.github.com/peterrus/e59a96688a4d49ee3d9302c0d3ff5fdd#file-gnome3_keybind_backup-sh

mkdir -p gnome3-keybind-backup

dconf dump '/org/gnome/desktop/wm/keybindings/' > gnome3-keybind-backup/keybindings.dconf
dconf dump '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/' > gnome3-keybind-backup/custom-values.dconf
dconf read '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings' > gnome3-keybind-backup/custom-keys.dconf
echo "backup done"
exit 0