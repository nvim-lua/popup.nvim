# popup.nvim

[WIP] An implementation of the Popup API from vim in Neovim. Hope to upstream
when complete

## Goals

Provide an API that is compatible with the vim `popup_*` APIs. After
stablization and any required features are merged into Neovim, we can upstream
this and wrap it with C functions to make the APIs compatible.

## Discussion:

- Should we support similar dictionaries in the neovim style.
    - Can you use "row" and "col", which are the neovim words for where you are going to place your window? Or will we just say these are different words because that's how vim does it?

## List of Neovim Features Required:

- [ ] Key handlers for `popup_filter`.

Optional:

- [ ] Add `textprop` wrappers?

## Progress

Would love contributors ;)
