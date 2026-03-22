# shellcheck shell=bash
######################################################################
#<
#
# Function: p6df::modules::euc::chime::accounts::list()
#
#>
######################################################################
p6df::modules::euc::chime::accounts::list() {

  aws chime list-accounts

  p6_return_void
}

######################################################################
#<
#
# Function: p6df::modules::euc::chime::users::list(account_id)
#
#  Args:
#	account_id -
#
#>
######################################################################
p6df::modules::euc::chime::users::list() {
  local account_id="${1:?requires account ID}"

  aws chime list-users \
    --account-id "${account_id}"

  p6_return_void
}

# ── Role-assumed variants ────────────────────────────────────────────────────

######################################################################
#<
#
# Function: p6df::modules::euc::role::chime::accounts::list(role_arn, session_name)
#
#  Args:
#	role_arn -
#	session_name -
#
#>
######################################################################
p6df::modules::euc::role::chime::accounts::list() {
  local role_arn="${1:?requires role ARN}"
  local session_name="${2:?requires session name}"

  p6_aws_svc_sts_role_assume "${role_arn}" "${session_name}"
  p6df::modules::euc::chime::accounts::list
  p6_aws_svc_sts_role_assume_un

  p6_return_void
}
