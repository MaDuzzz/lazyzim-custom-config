return {
  "nvim-neo-tree/neo-tree.nvim",
  config = function()
    require("neo-tree").setup({
      window = {
        width = 30, -- Đặt độ rộng mặc định của Neo-tree (bạn có thể thay đổi giá trị này)
      },
      -- Các tùy chọn cấu hình khác của Neo-tree
    })
  end,
}
