local which_key = require("which-key")

which_key.register({
    a = {
        name = "Mark File",
    },
}, { prefix = "<leader>" })

which_key.register({
    g = {
        name = "Git",
        s = "Status",
    },
}, { prefix = "<leader>" })

which_key.register({
    p = {
        name = "Project",
        f = "Fuzzy Find",
        s = "Search (Grep)",
        v = "Netrw",
    },
}, { prefix = "<leader>" })

which_key.register({
    r = {
        name = "Vim TMux Test",
        a = "Reattach to pane",
        f = "Focus test pane",
    },
}, { prefix = "<leader>" })

which_key.register({
    t = {
        name = "Test",
        f = "Run File",
        l = "Run Last",
    },
}, { prefix = "<leader>" })

which_key.register({
    y = {
        name = "Yank (System)",
    },
}, { prefix = "<leader>" })
