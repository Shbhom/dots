local M = {}

M.disabled={
  n={
    ["<C-n>"]="",
    ["<leader>e"]="",
    ["<S-tab>"]="",
    ["tab"]=""
  }
}

M.abc={
  n={
    ["<leader>e"]={"<cmd>NvimTreeToggle<CR>","NvimTreeToggle"}
  },
  i={
    ['jk']={"<ESC><CR>","shift to normal mode"}
  }
}

M.tabufline={
  plugin=true,
  n={
    ["<S-l>"]={
      function()
        require("nvchad_ui.tabufline").tabuflineNext()
      end,
      "Goto next buffer",
    },
    ["<S-h>"]={
      function()
        require("nvchad_ui.tabufline").tabuflinePrev()
      end,
      "Goto prev buffer",
    }
  }
}

return M
