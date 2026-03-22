# shellcheck shell=bash
######################################################################
#<
#
# Function: p6df::modules::euc::wickr::networks::list()
#
#>
######################################################################
p6df::modules::euc::wickr::networks::list() {

  aws wickr list-networks

  p6_return_void
}

# ── Role-assumed variants ────────────────────────────────────────────────────

######################################################################
#<
#
# Function: p6df::modules::euc::role::wickr::networks::list(role_arn, session_name)
#
#  Args:
#	role_arn -
#	session_name -
#
#>
######################################################################
p6df::modules::euc::role::wickr::networks::list() {
  local role_arn="${1:?requires role ARN}"
  local session_name="${2:?requires session name}"

  p6_aws_svc_sts_role_assume "${role_arn}" "${session_name}"
  p6df::modules::euc::wickr::networks::list
  p6_aws_svc_sts_role_assume_un

  p6_return_void
}
