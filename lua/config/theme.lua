local M = {}

local command = { "defaults", "read", "-g", "AppleInterfaceStyle" }

local function detected_background(result)
  return result.stdout and vim.trim(result.stdout) == "Dark" and "dark" or "light"
end

local function apply(background)
  local colorscheme = "github_" .. background .. "_tritanopia"

  if vim.g.colors_name == colorscheme then
    return
  end

  vim.g.colors_name = nil
  vim.o.background = background
  vim.cmd.colorscheme(colorscheme)
end

function M.setup()
  if vim.fn.has("macunix") == 0 or vim.fn.executable(command[1]) == 0 then
    apply(vim.o.background)
    return
  end

  apply(detected_background(vim.system(command, { text = true }):wait()))
end

return M
