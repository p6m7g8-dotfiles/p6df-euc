# shellcheck shell=bash
######################################################################
#<
#
# Function: p6df::modules::euc::deps()
#
#>
######################################################################
p6df::modules::euc::deps() {
  ModuleDeps=(
    p6m7g8-dotfiles/p6df-aws
  )
}

######################################################################
#<
#
# Function: p6df::modules::euc::init(_module, dir)
#
#  Args:
#	_module -
#	dir -
#
#>
######################################################################
p6df::modules::euc::init() {
  local _module="$1"
  local dir="$2"

  p6_bootstrap "$dir"

  p6_return_void
}

######################################################################
#<
#
# Function: p6df::modules::euc::mcp()
#
#>
######################################################################
p6df::modules::euc::mcp() {

  # No dedicated EUC MCP server exists yet; placeholder for when one does.

  p6_return_void
}
