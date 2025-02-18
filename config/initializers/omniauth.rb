Rails.application.config.middleware.use OmniAuth::Builder do
    provider :twitter, Rails.application.credentials.dig(:x, :key), Rails.application.credentials.dig(:x, :secret)
end