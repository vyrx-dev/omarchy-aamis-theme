return {
    {
        "bjarneo/aether.nvim",
        name = "aether",
        priority = 1000,
        opts = {
            disable_italics = false,
            colors = {
                -- Monotone shades (base00-base07)
                base00 = "#121212", -- Default background
                base01 = "#5c5757", -- Lighter background (status bars)
                base02 = "#121212", -- Selection background
                base03 = "#5c5757", -- Comments, invisibles
                base04 = "#e6caab", -- Dark foreground
                base05 = "#eedcc7", -- Default foreground
                base06 = "#eedcc7", -- Light foreground
                base07 = "#e6caab", -- Light background

                -- Accent colors (base08-base0F)
                base08 = "#e25d6c", -- Variables, errors, red
                base09 = "#e9838f", -- Integers, constants, orange
                base0A = "#f4bb54", -- Classes, types, yellow
                base0B = "#cea37f", -- Strings, green
                base0C = "#e8ab3b", -- Support, regex, cyan
                base0D = "#e2be8a", -- Functions, keywords, blue
                base0E = "#ede4c8", -- Keywords, storage, magenta
                base0F = "#edb95a", -- Deprecated, brown/yellow
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
