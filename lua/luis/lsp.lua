local status_ok, lsp = pcall(require, "lsp-zero")
if not status_ok then
    return
end

lsp.set_preferences({
  suggest_lsp_servers = false,
  setup_servers_on_start = true,
  set_lsp_keymaps = true,
  configure_diagnostics = true,
  cmp_capabilities = true,
  manage_nvim_cmp = true,
  call_servers = 'local',
  sign_icons = {
    error = '',
    warn = '',
    hint = '',
    info = ''
  }
})

lsp.configure('sumneko_lua', {
    settings = {
		Lua = {
			diagnostics = {
				globals = { "vim" },
			}
        }
    }
})


vim.diagnostic.config({
  virtual_text = true,
  signs = true,
  update_in_insert = false,
  underline = true,
  severity_sort = false,
  float = true,
})



-- lsp.preset('recommended')
lsp.setup()
