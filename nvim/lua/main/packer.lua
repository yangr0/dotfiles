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
  use("dense-analysis/ale")
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

  if packer_bootstrap then
    require("packer").sync()
  end
end)

vim.cmd.packadd("packer.nvim")
