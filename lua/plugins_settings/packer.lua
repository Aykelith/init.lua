packer = require("packer")

-- Have packer use a popup window
--[[ packer.init({
    display = {
        open_fn = function()
            return require("packer.util").float({ border = "rounded" })
        end,
    },
})
--]]
