resource "vault_approle_auth_backend_role" "approle_auth_backend_roles" {
  for_each = var.approle_auth_backend_roles

  role_name               = each.value.role_name
  alias_metadata          = each.value.alias_metadata
  backend                 = each.value.backend
  bind_secret_id          = each.value.bind_secret_id
  local_secret_ids        = each.value.local_secret_ids
  namespace               = each.value.namespace
  role_id                 = each.value.role_id
  secret_id_bound_cidrs   = each.value.secret_id_bound_cidrs
  secret_id_num_uses      = each.value.secret_id_num_uses
  secret_id_ttl           = each.value.secret_id_ttl
  token_bound_cidrs       = each.value.token_bound_cidrs
  token_explicit_max_ttl  = each.value.token_explicit_max_ttl
  token_max_ttl           = each.value.token_max_ttl
  token_no_default_policy = each.value.token_no_default_policy
  token_num_uses          = each.value.token_num_uses
  token_period            = each.value.token_period
  token_policies          = each.value.token_policies
  token_ttl               = each.value.token_ttl
  token_type              = each.value.token_type
}

