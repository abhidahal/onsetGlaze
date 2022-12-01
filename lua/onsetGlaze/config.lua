local M = {}

local defaults = {
  style = "dark", 
  transparent = true, 
  terminal_colors = true, 
  enable_italics = true, 
  styles = {
    comments = { italic = true },
    keywords = { italic = true },
    functions = { bold = true },
    variables = {},
    string = { italic = true },
    underline = true,
    undercurl = true,
  },
}

M.options = {}

function M.setup(options)
  M.options = vim.tbl_deep_extend("force", {}, defaults, options or {})
  if M.options.transparent and M.options.style == "light" then
    print("onsetGlaze does not support transparent mode in Light theme. Switching Back to dark theme with transparent mode.")
    M.options.style = "dark"
    M.options.transparent = true
  end
end

function M.extend(options)
  M.options = vim.tbl_deep_extend("force", {}, M.options or defaults, options or {})
end

function M.is_day()
  return M.options.style == "light" and M.options.transparent == false or vim.o.background == "light"
end

M.setup()

return M
