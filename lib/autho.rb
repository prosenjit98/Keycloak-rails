require 'uri'
require 'net/http'

module Autho
  def self.authorize
    begin
      url = URI.parse("http://localhost:8080/auth/realms/zamstar/protocol/openid-connect/token")
      http = Net::HTTP.new(url.host, url.port)
      # http.use_ssl = true
      req = Net::HTTP::Post.new(url.request_uri)
      req.set_form_data({username: "admin@yopmail.com" , password: "12345678", client_id: "ey-dev", grant_type: "password"})
      response = http.request(req)
      sso_user = JSON.parse(response.body)
    rescue => error
      { status: 'fail', body: error.message }
    end
  end
end