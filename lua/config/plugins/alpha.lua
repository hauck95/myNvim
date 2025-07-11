return {
  "goolord/alpha-nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    local alpha = require("alpha")
    local dashboard = require("alpha.themes.dashboard")

    dashboard.section.header.val = {
"              .........                     ",
"            .'------.' |       HELLO!       ",
"           | .-----. | |                    ",
"           | |     | | |                    ",
"         __| |     | | |;. _______________  ",
"        /  |*`-----'.|.' `;              // ",
"       /   `---------' .;'              //  ",
" /|   /  .''''////////;'               //   ",
"|=|  .../ ######### /;/               //|   ",
"|/  /  / ######### //                //||   ",
"   /   `-----------'                // ||   ",
"  /________________________________//| ||   ",
"  `--------------------------------' | ||   ",
"     | ||      | || |__LL__|| ||     | ||   ",
"     | ||      | ||         | ||     `--'   ",
"     | ||      `--'         | ||            ",
"     | ||                   | ||            ",
"     | ||                   | ||            ",
"     `--'                   `--'            ",
    }

    -- Remove buttons and footer
    dashboard.section.buttons.val = {}
    dashboard.section.footer.val = {}
 -- 👇 Custom layout to vertically center
    dashboard.config.layout = {
      { type = "padding", val = 8 }, -- vertical space
      dashboard.section.header,
      { type = "padding", val = 2 },  -- space between header and buttons (if any)
      dashboard.section.buttons,
      dashboard.section.footer,
    }

    alpha.setup(dashboard.config)
  end,
}
