-- colorscheme.lua

local M = {}

M.colors = {
  bg = "#1e1e2e",
  fg = "#cdd6f4",
  accent = "#f38ba8",
  --darker_bg = "#181825",
  darker_bg = "#14141a",
  dark_gray = "#313244",
  -- gray = "#45475a",
  gray = "#b0b0c3",
  light_gray = "#585b70",
  red = "#f38ba8",
  green = "#a6e3a1",
  yellow = "#f9e2af",
  blue = "#89b4fa",
  magenta = "#cba6f7",
  cyan = "#94e2d5",
  white = "#ffffff",
  orange = "#fab387",
  keyword = "#f77ea0",
}

M.setup = function()
  vim.cmd("highlight clear")
  vim.opt.termguicolors = true
  vim.g.colors_name = "custom"

  local colors = M.colors

  local function hl(group, opts)
    vim.api.nvim_set_hl(0, group, opts)
  end
  -- Background and foreground
  hl("Normal", { bg = colors.bg, fg = colors.fg })
  hl("NormalNC", { bg = colors.darker_bg, fg = colors.fg })

  -- Line numbers
  hl("LineNr", { fg = colors.light_gray })
  hl("CursorLineNr", { fg = colors.orange, bold = true })

  -- Statusline
  hl("StatusLine", { bg = colors.darker_bg, fg = colors.fg })
  hl("StatusLineNC", { bg = colors.dark_gray, fg = colors.light_gray })

  -- Visual mode
  hl("Visual", { bg = colors.dark_gray })

  -- Comments
  hl("Comment", { fg = colors.gray, italic = true })

  -- Strings
  hl("String", { fg = colors.green })

  -- Functions
  hl("Function", { fg = colors.blue })

  -- Keywords
  hl("Keyword", { fg = colors.keyword, italic = true })

  -- Variables
  hl("Identifier", { fg = colors.orange })

  -- Constants
  hl("Constant", { fg = colors.cyan })

  -- Errors
  hl("Error", { fg = colors.red, bg = colors.bg, bold = true })

  -- Warnings
  hl("WarningMsg", { fg = colors.yellow, bg = colors.bg, bold = true })

  -- Information
  hl("InfoMsg", { fg = colors.blue, bg = colors.bg, bold = true })

  -- Diagnostics
  hl("DiagnosticError", { fg = colors.red })
  hl("DiagnosticWarn", { fg = colors.orange })
  hl("DiagnosticInfo", { fg = colors.blue })
  hl("DiagnosticHint", { fg = colors.cyan })

  -- Git
  hl("DiffAdd", { bg = colors.green, fg = colors.bg })
  hl("DiffChange", { bg = colors.yellow, fg = colors.bg })
  hl("DiffDelete", { bg = colors.red, fg = colors.bg })
  hl("DiffText", { bg = colors.blue, fg = colors.bg })
end

return M
