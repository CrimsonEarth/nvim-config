-- Colors

return {
-- Kanagawa theme
  {
    "rebelot/kanagawa.nvim",
    config = function()
      require('kanagawa').setup({
        transparent = true,  -- Enable transparency
        colors = {
          theme = {
            all = {
              ui = {
                bg_gutter = "none", -- Remove background from gutter
              },
            },
          },
        },
        overrides = function(colors)
          return {
            NormalFloat = { bg = "none" },  -- Transparent background for floating windows
            FloatBorder = { bg = "none" },
          }
        end,
      })
      -- Apply the theme
      vim.cmd("colorscheme kanagawa")
    end,
  }

}
