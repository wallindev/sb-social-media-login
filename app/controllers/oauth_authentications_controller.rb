class OauthAuthenticationsController < ApplicationController
  def start
  end

  def callback
    ap "Yay! You've landed on the callback action on the OauthAuthenticationsController controller!! =D"

    ap 'OauthAuthenticationsController'

    ap 'request.env["omniauth.auth"]:'
    ap request.env["omniauth.auth"]
    ap 'request.env["HTTP_REFERER"]:'
    ap request.env["HTTP_REFERER"]

    message = "Success!"
    success = true
    referer = request.env["HTTP_REFERER"]
    omniauth_auth = request.env["omniauth.auth"]
    if omniauth_auth.empty
      message = "Fail!"
      success = false
    end

    # render json: {
    #   message: 'Success!',
    #   success: true,
    #   provider: params[:provider]
    # },
    # status: 200

		@data = {
      message: message,
      success: success,
      provider: params[:provider],
      referer: referer,
      omniauth_auth: omniauth_auth
    }
    @json_data = JSON.parse @data.to_json
    @json_data
  end
end
