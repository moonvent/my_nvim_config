require('heirline').setup({
  custom_navbar = function()
    return require('bufferline').bufferline()
  end,
})


return {
  n = {
    ["<leader>dd"] = { "<cmd>q<cr>", desc = "Quit" },
    ["<leader>d"] = false,
    -- ["<leader>dr"] = { "<cmd>lua require'dap'.run_last()<cr>", desc = "Debug: Run" },

    ["<leader>lc"] = { "<cmd>lua require'dap'.run(cs_conf)<cr>", desc = "Debug: Run Django conf" },

    ["<leader>drd"] = { "<cmd>lua require'dap'.run(DjangoConf)<cr>", desc = "Debug: Run Django conf" },
    ["<leader>drx"] = { "<cmd>lua require'dap'.run(DjangoConf2)<cr>", desc = "Debug: Run Django conf" },
    ["<leader>drf"] = { "<cmd>lua require'dap'.run(LaunchFileConf)<cr>", desc = "Debug: Run file conf" },
    ["<leader>dra"] = { "<cmd>lua require'dap'.run(LaunchAppConf)<cr>", desc = "Debug: Run main file from poetry" },
    -- ["<leader>drx"] = { "<cmd>lua require'dap'.run(XLabFormDebugDocker)<cr>", desc = "Debug: Run xlab forms debugging" },
    -- ["<leader>drx"] = { "<cmd>lua require'dap.repl'.omnifunc<cr>", desc = "Debug: Run last session" },

    ["<leader>dc"] = { "<cmd>lua require'dap'.continue()<cr>", desc = "Debug: Continue" },

    ["<leader>dt"] = { "<cmd>lua require'dap'.terminate()<cr>", desc = "Debug: Terminate" },

    ["<leader>dso"] = { "<cmd>lua require'dap'.step_out()<cr>", desc = "Debug: Step Out" },
    ["<leader>dsi"] = { "<cmd>lua require'dap'.step_into()<cr>", desc = "Debug: Step Into" },

    ["<leader>dro"] = { "<cmd>lua require('dapui').open()<cr>", desc = "Debug: Open debug terminal" },
    ["<leader>drc"] = { "<cmd>lua require('dapui').close()<cr>", desc = "Debug: Close debug terminal" },
    ["<leader>drt"] = { "<cmd>lua require('dapui').toggle()<cr>", desc = "Debug: Toggle debug terminal" },

    ["<leader>dbc"] = { "<cmd>lua require'dap'.clear_breakpoints()<cr>", desc = "Debug: Clear all breakpoints" },
    ["<leader>dbt"] = { "<cmd>lua require'dap'.toggle_breakpoint()<cr>", desc = "Debug: Toggle Breakpoint" },

    ["<leader>bp"] = { "<cmd>:b#<cr>", desc = "Buffer: Return to previous buffer in history" },
    
    ["<S-l>"] = { '<cmd>lua require("heirline").move("down")<CR>:lua vim.api.nvim_tabpage_select(vim.api.nvim_get_current_tabpage() + 1)<cr>', desc = "Buffer: Return to previous buffer in history" },
    ["<S-h>"] = { '<cmd>lua require("heirline").move("up")<CR>:lua vim.api.nvim_tabpage_select(vim.api.nvim_get_current_tabpage() - 1)<cr>', desc = "Buffer: Return to previous buffer in history" },
  },
}
