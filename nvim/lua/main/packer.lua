local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath("data").."/site/pack/packer/start/packer.nvim"
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({"git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path})
    vim.cmd([[packadd packer.nvim]])
    return true
  end
  return false
end
local packer_bootstrap = ensure_packer()

require("packer").startup(function(use)
  use("wbthomason/packer.nvim")
  use({
    "nvim-treesitter/nvim-treesitter",
    run = ":TSUpdate"
  })
  
  -- LSP Support
  use("neovim/nvim-lspconfig")
  use("williamboman/mason.nvim")
  use("williamboman/mason-lspconfig.nvim")
  
  -- Autocompletion
  use("hrsh7th/nvim-cmp")
  use("hrsh7th/cmp-nvim-lsp")
  use("hrsh7th/cmp-buffer")
  use("hrsh7th/cmp-path")
  use("L3MON4D3/LuaSnip")
  use("saadparwaiz1/cmp_luasnip")
  
  -- Formatting
  use("stevearc/conform.nvim")
  
  use({
    "ellisonleao/gruvbox.nvim",
    as = "gruvbox"
  })
  use({
    'nvim-lualine/lualine.nvim',
    requires = { 'nvim-tree/nvim-web-devicons', opt = true}
  })
  use({"lukas-reineke/indent-blankline.nvim", commit = "8299fe7"})

  use({"github/copilot.vim"})

  use({"wakatime/vim-wakatime"})
  use {
  "nvim-telescope/telescope.nvim", tag = '0.1.8',
  requires = { {'nvim-lua/plenary.nvim'} }
}
use 'nvim-tree/nvim-web-devicons'

  if packer_bootstrap then
    require("packer").sync()
  end
end)

vim.cmd.packadd("packer.nvim")
