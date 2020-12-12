require('plenary.reload').reload_module('popup')

local popup = require('popup')

local test_level = 3

vim.cmd [[highlight PopupColor1 ctermbg=lightblue guibg=lightblue]]
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

if test_level == 3 then
  -- Test some borders
  popup.create('hello border', {
    line = 2,
    col = 3,
    border = {}
  })
end


if test_level == 4 then
  popup.create('hello padding', {
    line = 2, col = 23, padding = {}
  })
end

if test_level == 5 then
  popup.create('hello padding', {
    line = 2, col = 23, border = {}, padding = {}
  })
end


if test_level == 6 then
  popup.create('all the plus signs', {
    line = 8,
    col = 55,
    padding = { 0, 3, 0, 3 },
    -- border = { 0, 1, 0, 1 }
    borderchars = {"+"}
  })
end

if test_level == 7 then
  popup.create('all the plus signs', {
    line = 8,
    col = 55,
    padding = { 0, 3, 0, 3 },
    -- border = { 0, 1, 0, 1 }
    borderchars = {"-", "+"}
  })
end

if test_level == 8 then
  popup.create('just some longer text', {
    -- title = 'coool',
    line = 8,
    col = 55,
    pos = "botleft",
    time = 2000,
    padding = { 0, 3, 0, 3 },
    -- border = { 1, 1, 1, 1 }
  })
end

if test_level == 9 then
  local bufnr = vim.api.nvim_create_buf(false, false)
  vim.api.nvim_buf_set_lines(bufnr, 0, -1, false, {'pass bufnr 1', 'pass bufnr 2'})
  popup.create(bufnr, {
    line = 8,
    col = 55,
    minwidth = 20,
  })
end
