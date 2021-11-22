Rails.application.config.middleware.use OmniAuth::Builder do
  provider :keycloak_openid, 'eyk-ey-io', '',
    client_options: {site: 'https://keycloak.mothership.ey.io', realm: 'KontainerYard'},
    name: 'keycloak'
end


# Rails.application.config.middleware.use OmniAuth::Builder do
#   provider :sso, "eyk-ey-io", ""
# end

# OmniAuth.config.allowed_request_methods = [:post, :get]


# var keycloakClientName = process.env.KEYCLOAK_CLIENT_NAME || "eyk-ey-io"
# var keycloakConfig = {
#     "realm": "KontainerYard",
#     "auth-server-url": "https://keycloak.mothership.ey.io/auth",
#     "ssl-required": "external",
#     "resource": keycloakClientName,
#     "public-client": true,
#     "confidential-port": 0,
#   }

# {
#   "realm": "ey-dev",
#   "auth-server-url": "http://localhost:8080/auth/",
#   "ssl-required": "external",
#   "resource": "zamstar",
#   "public-client": true,
#   "confidential-port": 0
# }