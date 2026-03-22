# shellcheck shell=bash
######################################################################
#<
#
# Function: p6df::modules::euc::connect::instances::list()
#
#>
######################################################################
p6df::modules::euc::connect::instances::list() {

  aws connect list-instances

  p6_return_void
}

######################################################################
#<
#
# Function: p6df::modules::euc::connect::users::list(instance_id)
#
#  Args:
#	instance_id -
#
#>
######################################################################
p6df::modules::euc::connect::users::list() {
  local instance_id="${1:?requires instance ID}"

  aws connect list-users \
    --instance-id "${instance_id}"

  p6_return_void
}

######################################################################
#<
#
# Function: p6df::modules::euc::connect::queues::list(instance_id)
#
#  Args:
#	instance_id -
#
#>
######################################################################
p6df::modules::euc::connect::queues::list() {
  local instance_id="${1:?requires instance ID}"

  aws connect list-queues \
    --instance-id "${instance_id}"

  p6_return_void
}

# ── Role-assumed variants ────────────────────────────────────────────────────

######################################################################
#<
#
# Function: p6df::modules::euc::role::connect::instances::list(role_arn, session_name)
#
#  Args:
#	role_arn -
#	session_name -
#
#>
######################################################################
p6df::modules::euc::role::connect::instances::list() {
  local role_arn="${1:?requires role ARN}"
  local session_name="${2:?requires session name}"

  p6_aws_svc_sts_role_assume "${role_arn}" "${session_name}"
  p6df::modules::euc::connect::instances::list
  p6_aws_svc_sts_role_assume_un

  p6_return_void
}
