return {
	{
		"ThePrimeagen/harpoon",
		branch = "harpoon2",
		requires = { { "nvim-lua/plenary.nvim" } },
		config = function()
			local status_ok, harpoon = pcall(require, "harpoon")
			if not status_ok then
				return
			end
			harpoon:setup({})

			local status_ok, telescope = pcall(require, "telescope")
			if not status_ok then
				return
			end
			telescope.load_extension("harpoon")

			local harpoon = require("harpoon")
			harpoon:setup({})

			-- basic telescope configuration
			local conf = require("telescope.config").values
			local function toggle_telescope(harpoon_files)
				local file_paths = {}
				for _, item in ipairs(harpoon_files.items) do
					table.insert(file_paths, item.value)
				end

				require("telescope.pickers")
					.new({}, {
						prompt_title = "Harpoon",
						finder = require("telescope.finders").new_table({
							results = file_paths,
						}),
						previewer = conf.file_previewer({}),
						sorter = conf.generic_sorter({}),
					})
					:find()
			end

			-- REQUIRED
			harpoon:setup()
			-- REQUIRED

			vim.keymap.set("n", "<leader>a", function()
				harpoon:list():add()
			end)
			vim.keymap.set("n", "<C-e>", function()
				harpoon.ui:toggle_quick_menu(harpoon:list())
			end)

			-- vim.keymap.set("n", "<C-h>", function()
			-- 	harpoon:list():select(1)
			-- end)
			-- vim.keymap.set("n", "<C-t>", function()
			-- 	harpoon:list():select(2)
			-- end)
			-- vim.keymap.set("n", "<C-n>", function()
			-- 	harpoon:list():select(3)
			-- end)
			-- vim.keymap.set("n", "<C-s>", function()
			-- 	harpoon:list():select(4)
			-- end)

			-- Toggle previous & next buffers stored within Harpoon list
			vim.keymap.set("n", "<C-S-P>", function()
				harpoon:list():prev()
			end)
			vim.keymap.set("n", "<C-S-N>", function()
				harpoon:list():next()
			end)
		end,
	},
	{
		"letieu/harpoon-lualine",
		dependencies = {
			{
				"ThePrimeagen/harpoon",
				branch = "harpoon2",
			},
		},
	},
}
