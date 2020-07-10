
package.loaded['popup'] = nil
package.loaded['popup.border'] = nil

local popup = require('popup')

local test_level = 5

vim.cmd [[highlight PopupColor1 ctermbg=blue guibg=lightblue]]
vim.cmd [[highlight PopupColor2 ctermbg=lightcyan guibg=lightcyan]]

if test_level < 1 then
  popup.create('hello there', {
    line = 3,
    col = 11,
    minwidth = 20,
    highlight = 'PopupColor1'
  })
end

if test_level < 2 then
  popup.create(
    {'another one', 'another two', 'another three'},
    {
      line = 3,
      col = 25,
      minwidth = 20
    })
end

if test_level < 3 then
  -- Test some borders
  popup.create('hello border', {
    line = 2,
    col = 3,
    border = {}
  })
end


if test_level == 3 then
  popup.create('hello padding', {
    line = 2, col = 23, padding = {}
  })
end

if test_level == 4 then
  popup.create('hello padding', {
    line = 2, col = 23, border = {}, padding = {}
  })
end


if test_level == 5 then
  popup.create('wrapped longer text', {
    line = 8,
    col = 55,
    padding = { 0, 3, 0, 3 },
    border = { 0, 1, 0, 1 }
  })
end
