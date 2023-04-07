require("lspconfig.server_configurations.texlab").default_config.settings = {
  texlab = {
    chktex = {
      -- onEdit = false, -- default value
      onOpenAndSave = true,
    },
    latexindent = {
      modifyLineBreaks = true,
    },
  },
}
require("lspconfig.server_configurations.ltex").default_config.settings = {
  ltex = { checkFrequency = "save" },
}
-- TODO: setup omni completion for latex
return {
  "lervag/vimtex",
  lazy = false,
  config = function()
    vim.g.vimtex_compiler_latexmk = { build_dir = "build" }
    vim.g.vimtex_quickfix_open_on_warning = false
    vim.g.vimtex_quickfix_ignore_filters = { "Underfull", "Overfull" }
    return {
      ["vimtex_view_general_viewer"] = "C:/Users/gersi/AppData/Local/Microsoft/WindowsApps/SumatraPDF.exe",
      ["vimtex_view_method"] = "C:/Users/gersi/AppData/Local/Microsoft/WindowsApps/SumatraPDF.exe",
      ["vimtex_view_general_options"] = "-reuse-instance -forward-search @tex @line @pdf",
      ["vimtex_view_general_options_latexmk"] = "-reuse-instance",
    }
  end,
}