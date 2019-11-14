Rails.application.config.middleware.use OmniAuth::Builder do
    provider :facebook, '680538159135435', '728f73e88988a9e5c94e879431252701'
end