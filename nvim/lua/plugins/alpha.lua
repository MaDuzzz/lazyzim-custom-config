return {
  "goolord/alpha-nvim",
  opts = function(_, opts)
    local dashboard = require("alpha.themes.dashboard")
    local logo = {
      "                                                                       ",
      "                                                                       ",
      "                                                                       ",
      "                                                                       ",
      "                                                                       ",
      "                                                                       ",
      " ~''+.+''+.+''+.+''+.+''+.+''+.+''+.+''+.+''+.+''+.+''+.+''+.+''+.+''~ ",
      "(                                                                     )",
      " )                                                                   ( ",
      "(     ████████╗███╗   ███╗██████╗     ██████╗ ███████╗██╗   ██╗       )",
      " )    ╚══██╔══╝████╗ ████║██╔══██╗    ██╔══██╗██╔════╝██║   ██║      ( ",
      "(        ██║   ██╔████╔██║██║  ██║    ██║  ██║█████╗  ██║   ██║       )",
      " )       ██║   ██║╚██╔╝██║██║  ██║    ██║  ██║██╔══╝  ╚██╗ ██╔╝      ( ",
      "(        ██║   ██║ ╚═╝ ██║██████╔╝    ██████╔╝███████╗ ╚████╔╝        )",
      " )       ╚═╝   ╚═╝     ╚═╝╚═════╝     ╚═════╝ ╚══════╝  ╚═══╝        ( ",
      "(                                                                     )",
      " )                              @dungtm3                             ( ",
      "(                                                                     )",
      " ~''+.+''+.+''+.+''+.+''+.+''+.+''+.+''+.+''+.+''+.+''+.+''+.+''+.+''~ ",
      "                                                                       ",
      "                                                                       ",
      "                                                                       ",
      "                                                                       ",
    }
    -- opts.layout = opts.layout or {}

    -- Gán giá trị logo vào header
    dashboard.section.header.val = logo
    dashboard.section.buttons.val = {
      dashboard.button("e", "✨ New file", "<cmd>ene <CR>"),
      dashboard.button("<leader> + l", "🛠️ Plugin Manager", ":Telescope plugins<CR>"),
      dashboard.button("<leader> + fr", "🔍 Recently opened files"),
      dashboard.button("<leader> + qs", "💾 Restore Session", ":RestoreSession<CR>"),
      dashboard.button("q", "🛑 Quit", ":qa<CR>"),
    }
    opts.layout = {
      { type = "padding", val = 2 },
      dashboard.section.header,
      { type = "padding", val = 2 },
      dashboard.section.buttons,
      { type = "padding", val = 1 },
      dashboard.section.footer,
    }
    return opts
  end,
}
