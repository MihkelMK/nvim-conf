-- Customize Mason plugins

---@type LazySpec
return {
  "WhoIsSethDaniel/mason-tool-installer.nvim",
  -- overrides `require("mason-tool-installer").setup(...)`
  opts = {
    -- Make sure to use the names found in `:Mason`
    ensure_installed = {
      "jinja-lsp",
      "curlylint",
    },
  },
  -- use mason-lspconfig to configure LSP installations
  -- {
  --   "williamboman/mason-lspconfig.nvim",
  --   -- overrides `require("mason-lspconfig").setup(...)`
  --   opts = function(_, opts)
  --     -- add more things to the ensure_installed table protecting against community packs modifying it
  --     opts.ensure_installed = require("astrocore").list_insert_unique(opts.ensure_installed, {
  --       "jinja_lsp",
  --       -- add more arguments for adding more language servers
  --     })
  --   end,
  -- },
  -- -- use mason-null-ls to configure Formatters/Linter installation for null-ls sources
  -- {
  --   "jay-babu/mason-null-ls.nvim",
  --   -- overrides `require("mason-null-ls").setup(...)`
  --   opts = function(_, opts)
  --     -- add more things to the ensure_installed table protecting against community packs modifying it
  --     opts.ensure_installed = require("astrocore").list_insert_unique(opts.ensure_installed, {
  --       "curlylint",
  --       -- add more arguments for adding more null-ls sources
  --     })
  --   end,
  -- },
  -- {
  --   "jay-babu/mason-nvim-dap.nvim",
  --   -- overrides `require("mason-nvim-dap").setup(...)`
  --   opts = function(_, opts)
  --     -- add more things to the ensure_installed table protecting against community packs modifying it
  --     opts.ensure_installed = require("astrocore").list_insert_unique(opts.ensure_installed, {
  --       "python",
  --       -- add more arguments for adding more debuggers
  --     })
  --   end,
  -- },
}
