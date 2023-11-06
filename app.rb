require "functions_framework"
require "base64"

FunctionsFramework.cloud_event "main" do |event|
  message = Base64.decode64 event.data["message"]["data"] rescue ""
  logger.info "It works #{message}!"
end
