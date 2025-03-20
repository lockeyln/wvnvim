-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

local M = {}

M.g = {
    -- mapleader = " ",
    -- maplocalleader = ",",
    autoformat = false,
    neovide_cursor_vfx_mode = "pixiedust",
    -- neovide_cursor_vfx_mode = "torpedo",
    neovide_cursor_vfx_particle_density = 100.0,
    neovide_floating_shadow = false,
    neovide_input_ime = true,
    neovide_hide_mouse_when_typing = true
}

M.opt = {
    spell = false,
    conceallevel = 0,
    wrap = false,
    relativenumber = false,
    guifont = {"Fira Code", "Sarasa Fixed SC", ":h12"},
    guicursor = "n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50,a:blinkwait0-blinkoff0-blinkon0-Cursor/lCursor,sm:block-blinkwait0-blinkoff0-blinkon0",
    list = true,
    listchars = {space = "·"},
    shell = "pwsh",
    shellcmdflag = "-command",
    shellquote = '"',
    shellxquote = "",
    modelines = 0,
    showcmd = false,
    scrolloff = 0,
    cinkeys = "0{,0},0),0],0#,!^F,o,O,e",
    indentkeys = "0{,0},0),0],0#,!^F,o,O,e"
}

-- vim.opt.listchars:append("space:⋅")
-- vim.opt.listchars:append("eol:↴")
-- vim.opt.listchars:append("tab:↹ ")

-- vim.opt.diffopt:append("vertical")
-- vim.opt.shortmess:append("sI")
-- vim.opt.whichwrap:append("<>[]hl")

for prefix, tbl in pairs(M) do
    for key, value in pairs(tbl) do
        vim[prefix][key] = value
    end
end

return M
