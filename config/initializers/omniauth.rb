OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, ENV['1275942382423351'], ENV['62f834166bb73b271571e5068d26b30c']
  provider :google_oauth2, 'https://785112176173-293jg3jdtoe81o9jq8lkjlgs6rlushnl.apps.googleusercontent.com', '45pmU8fpUGxLUrNgjrF1xuw6'
end