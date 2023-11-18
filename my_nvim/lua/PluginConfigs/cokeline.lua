require('cokeline').setup({
	sidebar = {
    filetype = { 'neo-tree'},
    components = {
      {
        text = function(buf)
          return vim.bo[buf.number].filetype
        end,
      },
    }
  },
})
