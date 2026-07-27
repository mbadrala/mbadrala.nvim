return {
    cmd = { "astro-ls", "--stdio" },
    filetypes = { "astro" },
    root_markers = { "package.json", "tsconfig.json", ".git" },
    init_options = {
        typescript = {
            tsdk = os.getenv("APPDATA"):gsub("\\", "/") .. "/npm/node_modules/typescript/lib",
        },
    },
}
