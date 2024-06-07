return {
	"williamboman/mason.nvim",
	dependencies = {
		"williamboman/mason-lspconfig.nvim",
		"WhoIsSethDaniel/mason-tool-installer.nvim",
	},
	config = function()
		-- import mason
		local mason = require("mason")

		-- import mason-lspconfig
		local mason_lspconfig = require("mason-lspconfig")

		local mason_tool_installer = require("mason-tool-installer")

		-- enable mason and configure icons
		mason.setup({
			ui = {
				icons = {
					package_installed = "✓",
					package_pending = "➜",
					package_uninstalled = "✗",
				},
			},
		})

		mason_lspconfig.setup({
			-- list of servers for mason to install
			ensure_installed = {
				"tsserver",
				"html",
				"cssls",
				"tailwindcss",
				"svelte",
				"lua_ls",
				"graphql",
				"emmet_ls",
				"prismals",
				"pyright",
			},
		})

		mason_tool_installer.setup({
			ensure_installed = {
				"prettier", -- prettier formatter
				"stylua", -- lua formatter
				"isort", -- python formatter
				"black", -- python formatter
				"pylint", -- python linter
				"eslint_d", -- js linter
			},
		})
		-- Auto-command to run eslint_d --fix on save
		vim.api.nvim_create_autocmd("BufWritePost", {
			pattern = { "*.js", "*.jsx", "*.ts", "*.tsx" },
			callback = function()
				-- Debugging message to ensure the auto-command is triggered
				-- print("Running eslint_d --fix on " .. vim.fn.expand("%:p"))

				-- Properly escape the file path
				local file_path = vim.fn.expand("%:p"):gsub("([%(%)%[%]])", "\\%1")

				-- Execute eslint_d --fix and capture the result
				local result = vim.fn.system("eslint_d --fix " .. file_path)

				-- Optional: print result for debugging purposes
				-- print("eslint_d result: " .. result)

				-- Reload the buffer to reflect the changes made by eslint_d --fix
				vim.cmd("edit")
			end,
		})
	end,
}
