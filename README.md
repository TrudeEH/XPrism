# Trude's Desktop Environment (TruDE)

[![license](https://img.shields.io/badge/license-GPL-brightgreen.svg)](https://github.com/TrudeEH/TruDE/LICENSE)

TruDE is an open source desktop environment for Linux, designed to be extremely lightweight and customizable.
Instead of floating windows, TruDE tiles windows automatically. 
This allows for the DE to be operated exclusively with a keyboard.
TruDE supports any device capable of running Linux, including arm and 32bit processors. This makes it great for servers, that may have limited resources for the OS.

*This repository is under heavy maintenance. Documentation and build details will be updated later on. Do NOT use this branch on critical infrastructure, as it is still unstable and subject to change.*

## Dev Notes
### TODO
- [ ] Add tabbed
- [ ] Add a minimal browser (like surf)
- [ ] Write the wiki
- [ ] README.md
- [ ] Install GTK theme automatically
- [ ] Keybindings pop-up
- [ ] Shutdown/Logout dmenu script
- [ ] Volumeicon config
- [ ] Add an external script to install an AUR helper, a GTK theme, and wallpaper selector (settings?)

### DWM Patches
- BAR_SYSTRAY_PATCH
- BAR_HEIGHT_PATCH
- BAR_IGNORE_XFT_ERRORS_WHEN_DRAWING_TEXT_PATCH
- BAR_PADDING_PATCH
- BAR_STATUSALLMONS_PATCH
- BAR_STATUSPADDING_PATCH
- AUTOSTART_PATCH
- DECORATION_HINTS_PATCH
- FAKEFULLSCREEN_PATCH
- VANITYGAPS_PATCH
- VANITYGAPS_MONOCLE_PATCH
- MOVESTACK_PATCH
- NET_CLIENT_LIST_STACKING_PATCH
- NO_TRANSPARENT_BORDERS_PATCH
- BAR_ALPHA_PATCH
- ONLYQUITONEMPTY_PATCH
- RESIZEPOINT_PATCH
- RESTARTSIG_PATCH
- STEAM_PATCH
- TAPRESIZE_PATCH
- TOGGLEFULLSCREEN_PATCH

### ST Patches
- ALPHA_PATCH
- BOLD_IS_NOT_BRIGHT_PATCH
- ANYSIZE_PATCH
- CLIPBOARD_PATCH
- DELKEY_PATCH
- CLUMNS_PATCH
- CSI_22_23_PATCH
- FIXKEYBOARDINPUT_PATCH
- KEYBOARDSELECT_PATCH
- NEWTERM_PATCH
- OPENURLONCLICK_PATCH
- SCROLLBACK_PATCH
- SCROLLBACK_MOUSE_PATCH
- WIDE_GLYPHS_PATCH

### Dmenu Patches
- ALPHA_PATCH
- CASEINSENSITIVE_PATCH
- CTRL_V_TO_PASTE_PATCH
- HIGHLIGHT_PATCH
- BORDER_PATCH
- CENTER_PATCH
- HIGHPRIORITY_PATCH
- MOUSE_SUPPORT_PATCH

### Slock Patches
- ALPHA_PATCH
- APSCOLOR_PATCH
- DPMS_PATCH
- FAILURE_COMMAND_PATCH
- KEYPRESS_FEEDBACK_PATCH
