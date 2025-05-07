vim.g.ale_use_neovim_diagnostics_api = 1
vim.g.ale_completion_enabled = 1
vim.g.ale_completion_autoimport = 1
vim.g.ale_rust_cargo_use_clippy = 1
vim.g.ale_set_loclist = 0
vim.g.ale_set_highlights = 1
vim.g.ale_python_flake8_options = "--ignore=W503,E501"
vim.g.rustfmt_autosave = 1
vim.g.ale_c_parse_compile_commands = 1
vim.g.ale_fix_on_save = 1
vim.g.ale_set_balloons = 1
vim.g.ale_linters_explicit = 1
vim.g.ale_linters = {
  ["rust"] = {"cargo", "analyzer"},
  ["python"] = {"flake8"},
  ["javascript"] = {"eslint"},
  ["javascriptreact"] = {"eslint"},
  ["typescript"] = {"eslint"},
  ["typescriptreact"] = {"eslint"},
  ["cpp"] = {"clangd"},
  ["terraform"] = {"checkov"}
}
vim.g.ale_fixers = {
  ["*"] = {"remove_trailing_lines", "trim_whitespace"},
  ["rust"] = {"rustfmt"},
  ["python"] = {"black"},
  ["javascript"] = {"eslint"},
  ["javascriptreact"] = {"eslint"},
  ["typescript"] = {"eslint"},
  ["typescriptreact"] = {"eslint"},
  ["cpp"] = {"clangtidy", "clang-format"},
  ["terraform"] = {"terraform"}
}
