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
# Function: words euc $EUC_HOST = p6df::modules::euc::profile::mod()
#
#  Returns:
#	words - euc $EUC_HOST
#
#  Environment:	 EUC_HOST
#>
######################################################################
p6df::modules::euc::profile::mod() {

  p6_return_words 'euc' "$"
}

