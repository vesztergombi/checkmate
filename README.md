# checkmate

Neovim plugin for creating and toggling checkboxes.

# API

The API is very simple and exposes two commands.
```
CheckmateCreateCheckBox
CheckmateToggleCheckBox
```

Default mappings

**mo** for CheckmateCreateCheckBox:
Inserts a line below like 'o', but with a checkbox and a bullet point '*'.
* [ ]

**mx** for CheckmateToggleCheckBox.
Replaces [ ] --> [X] or vice versa.
