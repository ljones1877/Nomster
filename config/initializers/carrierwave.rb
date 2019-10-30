# config/initializers/carrierwave.rb

CarrierWave.configure do |config|
  config.fog_provider = 'fog/aws'                        
  config.fog_public = false
  config.fog_credentials = {
    provider:              'AWS',                        
    aws_access_key_id:     ENV["AKIAUPBZPVHI3Y5K2P4M"],        
    aws_secret_access_key: ENV["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"],      
  }
  config.fog_directory  = ENV["lorin-jones-nomster"]            
end