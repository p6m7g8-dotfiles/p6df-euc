# shellcheck shell=bash
######################################################################
#<
#
# Function: p6df::modules::euc::workspaces::list()
#
#>
######################################################################
p6df::modules::euc::workspaces::list() {

  aws workspaces describe-workspaces

  p6_return_void
}

######################################################################
#<
#
# Function: p6df::modules::euc::workspaces::directories::list()
#
#>
######################################################################
p6df::modules::euc::workspaces::directories::list() {

  aws workspaces describe-workspace-directories

  p6_return_void
}

######################################################################
#<
#
# Function: p6df::modules::euc::workspaces::bundles::list()
#
#>
######################################################################
p6df::modules::euc::workspaces::bundles::list() {

  aws workspaces describe-workspace-bundles

  p6_return_void
}

# ── Role-assumed variants ────────────────────────────────────────────────────

######################################################################
#<
#
# Function: p6df::modules::euc::role::workspaces::list(role_arn, session_name)
#
#  Args:
#	role_arn -
#	session_name -
#
#>
######################################################################
p6df::modules::euc::role::workspaces::list() {
  local role_arn="${1:?requires role ARN}"
  local session_name="${2:?requires session name}"

  p6_aws_svc_sts_role_assume "${role_arn}" "${session_name}"
  p6df::modules::euc::workspaces::list
  p6_aws_svc_sts_role_assume_un

  p6_return_void
}
