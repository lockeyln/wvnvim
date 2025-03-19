-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
require("core.extra.keymaps")
require("core.extra.config")
if not vim.g.vscode then
    require("core.extra.telescope")
    require("core.extra.format")
    require("core.utils.aid").set_os_info()
    require("core.extra.snippets")
    require("core.extra.neotree")
    require("core.extra.toggleterm")
end
