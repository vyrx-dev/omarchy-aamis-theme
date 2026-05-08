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
                base01 = "#3a3a3a", -- Lighter background (status bars)
                base02 = "#f5f5f5", -- Selection background
                base03 = "#3a3a3a", -- Comments, invisibles
                base04 = "#000000", -- Dark foreground
                base05 = "#000000", -- Default foreground
                base06 = "#000000", -- Light foreground
                base07 = "#f0f0f0", -- Light background

                -- Accent colors (base08-base0F)
                base08 = "#ff3b30", -- Variables, errors, red
                base09 = "#d94a42", -- Integers, constants, orange
                base0A = "#d4a800", -- Classes, types, yellow
                base0B = "#34c759", -- Strings, green
                base0C = "#0095c8", -- Support, regex, cyan
                base0D = "#007aff", -- Functions, keywords, blue
                base0E = "#f66151", -- Keywords, storage, magenta
                base0F = "#cc9900", -- Deprecated, brown/yellow
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