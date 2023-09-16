-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  -- first key is the mode
  i = {

    -- move.nvim
    ['<A-j>'] = { '<Esc>:move .+1<CR>gi', desc = "Move current line down" },
    ['<A-k>'] = { '<Esc>:move .-2<CR>gi', desc = "Move current line up" },
    ['<C-A-j>'] = { '<Esc>:t .+0<CR>gi', desc = "Copy current line down" },
    ['<C-A-k>'] = { '<Esc>:t .-1<CR>kgi', desc = "Copy current line up" },
  },
  n = {
    -- second key is the lefthand side of the map
    -- mappings seen under group name "Buffer"
    ["<leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab" },
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(function(bufnr)
          require("astronvim.utils.buffer").close(
            bufnr)
        end)
      end,
      desc = "Pick to close",
    },
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>b"] = { name = "Buffers" },
    -- quick save
    -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command

    -- move.nvim
    ['<A-j>'] = { ':move .+1<CR>', desc = "Move current line down" },
    ['<A-k>'] = { ':move .-2<CR>', desc = "Move current line up" },
    ['<C-A-k>'] = { ':t .-1<CR>', desc = "Copy current line up" },
    ['<C-A-j>'] = { ':t .+0<CR>', desc = "Copy current line down" },
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
  v = {
    ['<A-j>'] = { ":move '>+1<CR>gv", desc = "Move current line down" },
    ['<A-k>'] = { ":move '<-2<CR>gv", desc = "Move current line up" },
    ['<C-A-j>'] = { ":t '>+0<CR>gv", desc = "Copy current line down" },
    ['<C-A-k>'] = { ":t '<-1<CR>gv", desc = "Copy current line up" },
    -- move.nvim
  }
}
