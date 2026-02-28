return {
    {
        "bjarneo/aether.nvim",
        branch = "v2",
        name = "aether",
        priority = 1000,
        opts = {
            transparent = false,
            colors = {
                -- Background colors
                bg = "#391d69",
                bg_dark = "#391d69",
                bg_highlight = "#b0a1cb",

                -- Foreground colors
                -- fg: Object properties, builtin types, builtin variables, member access, default text
                fg = "#ffffff",
                -- fg_dark: Inactive elements, statusline, secondary text
                fg_dark = "#f0cce4",
                -- comment: Line highlight, gutter elements, disabled states
                comment = "#b0a1cb",

                -- Accent colors
                -- red: Errors, diagnostics, tags, deletions, breakpoints
                red = "#dfb8b1",
                -- orange: Constants, numbers, current line number, git modifications
                orange = "#faf3f2",
                -- yellow: Types, classes, constructors, warnings, numbers, booleans
                yellow = "#ee94b6",
                -- green: Comments, strings, success states, git additions
                green = "#fbda6e",
                -- cyan: Parameters, regex, preprocessor, hints, properties
                cyan = "#7181cf",
                -- blue: Functions, keywords, directories, links, info diagnostics
                blue = "#484bac",
                -- purple: Storage keywords, special keywords, identifiers, namespaces
                purple = "#cd91cf",
                -- magenta: Function declarations, exception handling, tags
                magenta = "#ebd0ec",
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
