return {
  'stevearc/oil.nvim',
  ---@module 'oil'
  ---@type oil.SetupOpts
  opts = {
},
    view_options = {
            show_hidden = true,
            is_always_hidden = function(name, bufnr)
                -- for godot projects ignore *.uid files
                if is_godot_project then
                    -- ignore *.uid files introduced in godot 4.4
                    if vim.endswith(name, '.uid') then
                        return true
                    end
                    -- ignore server.pipe file
                    if name == 'server.pipe' then
                        return true
                    end
                else
                    return false
                end
            end,
        },
  -- Optional dependencies
  dependencies = { { "echasnovski/mini.icons", opts = {} } },
  -- dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if you prefer nvim-web-devicons
  -- Lazy loading is not recommended because it is very tricky to make it work correctly in all situations.
  lazy = false,
}
