-- AstroUI provides the basis for configuring the AstroNvim User Interface
-- Configuration documentation can be found with `:h astroui`
-- NOTE: We highly recommend setting up the Lua Language Server (`:LspInstall lua_ls`)
--       as this provides autocomplete and documentation while editing

---@type LazySpec
return {
  "AstroNvim/astroui",
  ---@type AstroUIOpts
  opts = {
    -- change colorscheme
    -- colorscheme = "monokai-pro-classic",
    -- AstroUI allows you to easily modify highlight groups easily for any and all colorschemes
    -- highlights = {
    --   -- set highlights for all themes
    --   -- use a function override to let us use lua to retrieve colors from highlight group
    --   -- there is no default table so we don't need to put a parameter for this function
    --   init = function()
    --     local get_hlgroup = require("astronvim.utils").get_hlgroup
    --     -- get highlights from highlight groups
    --     local normal = get_hlgroup "Normal"
    --     local fg, bg = normal.fg, normal.bg
    --     local bg_alt = get_hlgroup("Visual").bg
    --     local green = get_hlgroup("String").fg
    --     local red = get_hlgroup("Error").fg
    --     -- return a table of highlights for telescope based on colors gotten from highlight groups
    --     return {
    --       TelescopeBorder = { fg = bg_alt, bg = bg },
    --       TelescopeNormal = { bg = bg },
    --       TelescopePreviewBorder = { fg = bg, bg = bg },
    --       TelescopePreviewNormal = { bg = bg },
    --       TelescopePreviewTitle = { fg = bg, bg = green },
    --       TelescopePromptBorder = { fg = bg_alt, bg = bg_alt },
    --       TelescopePromptNormal = { fg = fg, bg = bg_alt },
    --       TelescopePromptPrefix = { fg = red, bg = bg_alt },
    --       TelescopePromptTitle = { fg = bg, bg = red },
    --       TelescopeResultsBorder = { fg = bg, bg = bg },
    --       TelescopeResultsNormal = { bg = bg },
    --       TelescopeResultsTitle = { fg = bg, bg = bg },
    --     }
    --   end,
    -- },
    polish = function()
      local function yaml_ft(path, bufnr)
        -- get content of buffer as string
        local content = vim.filetype.getlines(bufnr)
        if type(content) == "table" then content = table.concat(content, "\n") end

        -- check if file is in roles, tasks, or handlers folder
        local path_regex = vim.regex "(tasks\\|roles\\|handlers)/"
        if path_regex and path_regex:match_str(path) then return "yaml.ansible" end
        -- check for known ansible playbook text and if found, return yaml.ansible
        local regex = vim.regex "hosts:\\|tasks:"
        if regex and regex:match_str(content) then return "yaml.ansible" end

        -- return yaml if nothing else
        return "yaml"
      end

      vim.filetype.add {
        extension = {
          yml = yaml_ft,
          yaml = yaml_ft,
        },
      }
    end,
    -- Icons can be configured throughout the interface
    icons = {
      -- configure the loading of the lsp in the status line
      LSPLoading1 = "⠋",
      LSPLoading2 = "⠙",
      LSPLoading3 = "⠹",
      LSPLoading4 = "⠸",
      LSPLoading5 = "⠼",
      LSPLoading6 = "⠴",
      LSPLoading7 = "⠦",
      LSPLoading8 = "⠧",
      LSPLoading9 = "⠇",
      LSPLoading10 = "⠏",
    },
  },
}
