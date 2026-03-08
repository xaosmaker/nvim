local M = {}
function M.file_exist(name)
	local f = vim.fn.filereadable(name)
	return
end

return M
