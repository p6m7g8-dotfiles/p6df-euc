# shellcheck shell=bash
######################################################################
#<
#
# Function: p6df::modules::euc::workdocs::users::list()
#
#>
######################################################################
p6df::modules::euc::workdocs::users::list() {

  aws workdocs describe-users

  p6_return_void
}

######################################################################
#<
#
# Function: p6df::modules::euc::workdocs::folder::contents::list(folder_id)
#
#  Args:
#	folder_id -
#
#>
######################################################################
p6df::modules::euc::workdocs::folder::contents::list() {
  local folder_id="${1:?requires folder ID}"

  aws workdocs describe-folder-contents \
    --folder-id "${folder_id}"

  p6_return_void
}

######################################################################
#<
#
# Function: p6df::modules::euc::workdocs::document::versions::list(document_id)
#
#  Args:
#	document_id -
#
#>
######################################################################
p6df::modules::euc::workdocs::document::versions::list() {
  local document_id="${1:?requires document ID}"

  aws workdocs describe-document-versions \
    --document-id "${document_id}"

  p6_return_void
}

# ── Role-assumed variants ────────────────────────────────────────────────────

######################################################################
#<
#
# Function: p6df::modules::euc::role::workdocs::users::list(role_arn, session_name)
#
#  Args:
#	role_arn -
#	session_name -
#
#>
######################################################################
p6df::modules::euc::role::workdocs::users::list() {
  local role_arn="${1:?requires role ARN}"
  local session_name="${2:?requires session name}"

  p6_aws_svc_sts_role_assume "${role_arn}" "${session_name}"
  p6df::modules::euc::workdocs::users::list
  p6_aws_svc_sts_role_assume_un

  p6_return_void
}
