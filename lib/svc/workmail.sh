# shellcheck shell=bash
######################################################################
#<
#
# Function: p6df::modules::euc::workmail::organizations::list()
#
#>
######################################################################
p6df::modules::euc::workmail::organizations::list() {

  aws workmail list-organizations

  p6_return_void
}

######################################################################
#<
#
# Function: p6df::modules::euc::workmail::users::list(organization_id)
#
#  Args:
#	organization_id -
#
#>
######################################################################
p6df::modules::euc::workmail::users::list() {
  local organization_id="${1:?requires organization ID}"

  aws workmail list-users \
    --organization-id "${organization_id}"

  p6_return_void
}

######################################################################
#<
#
# Function: p6df::modules::euc::workmail::groups::list(organization_id)
#
#  Args:
#	organization_id -
#
#>
######################################################################
p6df::modules::euc::workmail::groups::list() {
  local organization_id="${1:?requires organization ID}"

  aws workmail list-groups \
    --organization-id "${organization_id}"

  p6_return_void
}

######################################################################
#<
#
# Function: p6df::modules::euc::workmail::resources::list(organization_id)
#
#  Args:
#	organization_id -
#
#>
######################################################################
p6df::modules::euc::workmail::resources::list() {
  local organization_id="${1:?requires organization ID}"

  aws workmail list-resources \
    --organization-id "${organization_id}"

  p6_return_void
}

# ── Role-assumed variants ────────────────────────────────────────────────────

######################################################################
#<
#
# Function: p6df::modules::euc::role::workmail::organizations::list(role_arn, session_name)
#
#  Args:
#	role_arn -
#	session_name -
#
#>
######################################################################
p6df::modules::euc::role::workmail::organizations::list() {
  local role_arn="${1:?requires role ARN}"
  local session_name="${2:?requires session name}"

  p6_aws_svc_sts_role_assume "${role_arn}" "${session_name}"
  p6df::modules::euc::workmail::organizations::list
  p6_aws_svc_sts_role_assume_un

  p6_return_void
}

######################################################################
#<
#
# Function: p6df::modules::euc::role::workmail::users::list(role_arn, session_name, organization_id)
#
#  Args:
#	role_arn -
#	session_name -
#	organization_id -
#
#>
######################################################################
p6df::modules::euc::role::workmail::users::list() {
  local role_arn="${1:?requires role ARN}"
  local session_name="${2:?requires session name}"
  local organization_id="${3:?requires organization ID}"

  p6_aws_svc_sts_role_assume "${role_arn}" "${session_name}"
  p6df::modules::euc::workmail::users::list "${organization_id}"
  p6_aws_svc_sts_role_assume_un

  p6_return_void
}
