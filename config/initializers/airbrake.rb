Airbrake.configure do |config|
  config.api_key = 'ea9f395cb50466358c3c82a0a94ad1bc'
  config.host    = 'errbit.growthrepublic.com'
  config.port    = 80
  config.secure  = config.port == 443
end
