class ApplicationController < ActionController::API

  around_action :convert_to_json

  def home
    { hello: 'world!' }
  end

  private
  def convert_to_json
    render json: yield
  end

end
