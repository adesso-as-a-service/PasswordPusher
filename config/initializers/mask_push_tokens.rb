# Keep push tokens out of the log (CISTOOLS-1876).
#
# A token in /p/<token> is enough to open a push created through the API
# (#noClientEncryption). Rails logs the path in "Started GET ..." and the token
# again as params[:id]; both are masked. The fragment with the key of browser
# pushes never reaches the server.
module MaskPushTokens
  TOKEN_PATH = %r{(/p/)[^/?.#]+}

  private

  def started_request_message(request)
    super.sub(TOKEN_PATH, '\1[FILTERED]')
  end
end

Rails::Rack::Logger.prepend(MaskPushTokens)
Rails.application.config.filter_parameters += [/\Aid\z/]
