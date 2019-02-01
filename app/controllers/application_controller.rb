class ApplicationController < ActionController::API
  before_action :cors_set_access_control_headers
  include Knock::Authenticate

  def handle_options_request
  head(:ok) if request.request_method == "OPTIONS"
end

def cors_set_access_control_headers
    headers['Access-Control-Allow-Origin'] = '*'
    headers['Access-Control-Allow-Methods'] = 'POST, PUT, DELETE, GET, PATCH, OPTIONS'
    headers['Access-Control-Request-Method'] = '*'
    headers['Access-Control-Allow-Headers'] = 'Origin, X-Requested-With, Content-Type, Accept, Authorization'
end
end
