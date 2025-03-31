return {
  {
    "AstroNvim/astrocore",
    ---@type AstroCoreOpts
    opts = {
      mappings = {
        -- first key is the mode
        n = {
          -- Disable defaults
          ["q:"] = ":",
        },

        t = {
          -- Remove defaults
          ["<C-Down>"] = false,
          ["<C-Left>"] = false,
          ["<C-Right>"] = false,
          ["<C-Up>"] = false,
          ["<C-q>"] = false,
          ["q:"] = ":",
        },
      },
    },
  },
  {
    "AstroNvim/astrolsp",
    ---@type AstroLSPOpts
    opts = {
      mappings = {
        n = {
          ["<Leader>lp"] = {
            ":PeekOpen<cr>",
            desc = "Preview Markdown",
            cond = function(client) return client.name == "marksman" and vim.fn.exists ":PeekOpen" > 0 end,
          },
        },
      },
    },
  },
}
