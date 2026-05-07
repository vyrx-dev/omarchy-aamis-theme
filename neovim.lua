return {
    {
        "bjarneo/aether.nvim",
        name = "aether",
        priority = 1000,
        opts = {
            disable_italics = false,
            transparent = true,
            colors = {
                -- Monotone shades (base00-base07)
                base00 = "#f5f5f5", -- Default background
                base01 = "#5e5959", -- Lighter background (status bars)
                base02 = "#f5f5f5", -- Selection background
                base03 = "#5e5959", -- Comments, invisibles
                base04 = "#ffffff", -- Dark foreground
                base05 = "#1c1c1c", -- Default foreground
                base06 = "#1c1c1c", -- Light foreground
                base07 = "#ffffff", -- Light background

                -- Accent colors (base08-base0F)
                base08 = "#ff3b30", -- Variables, errors, red
                base09 = "#ff6961", -- Integers, constants, orange
                base0A = "#ffcc00", -- Classes, types, yellow
                base0B = "#34c759", -- Strings, green
                base0C = "#5ac8fa", -- Support, regex, cyan
                base0D = "#007aff", -- Functions, keywords, blue
                base0E = "#f66151", -- Keywords, storage, magenta
                base0F = "#ffd60a", -- Deprecated, brown/yellow
            },
        },
        config = function(_, opts)
            require("aether").setup(opts)
            vim.cmd.colorscheme("aether")

            -- Enable hot reload
            require("aether.hotreload").setup()
        end,
    },
    {
        "LazyVim/LazyVim",
        opts = {
            colorscheme = "aether",
        },
    },
}
