return {
  'akinsho/toggleterm.nvim',
  version = "*",
  config = function()
    require("toggleterm").setup({
      shell = "%SystemRoot%/System32/WindowsPowerShell/v1.0/powershell.exe"
    })
  end,
}