variable "approle_auth_backend_roles" {
  description = <<EOT
Map of approle_auth_backend_roles, attributes below
Required:
    - role_name
Optional:
    - alias_metadata
    - backend
    - bind_secret_id
    - local_secret_ids
    - namespace
    - role_id
    - secret_id_bound_cidrs
    - secret_id_num_uses
    - secret_id_ttl
    - token_bound_cidrs
    - token_explicit_max_ttl
    - token_max_ttl
    - token_no_default_policy
    - token_num_uses
    - token_period
    - token_policies
    - token_ttl
    - token_type
EOT

  type = map(object({
    role_name               = string
    alias_metadata          = optional(map(string))
    backend                 = optional(string)
    bind_secret_id          = optional(bool)
    local_secret_ids        = optional(bool)
    namespace               = optional(string)
    role_id                 = optional(string)
    secret_id_bound_cidrs   = optional(set(string))
    secret_id_num_uses      = optional(number)
    secret_id_ttl           = optional(number)
    token_bound_cidrs       = optional(set(string))
    token_explicit_max_ttl  = optional(number)
    token_max_ttl           = optional(number)
    token_no_default_policy = optional(bool)
    token_num_uses          = optional(number)
    token_period            = optional(number)
    token_policies          = optional(set(string))
    token_ttl               = optional(number)
    token_type              = optional(string)
  }))
}

