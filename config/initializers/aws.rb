CarrierWave.configure do |config|
  config.fog_provider = 'fog/aws'  # required
  config.fog_credentials = {
    provider:              'AWS',                        # required
    aws_access_key_id:     'AKIAJXBOXLH6YX7TJKZA',                        # required
    aws_secret_access_key: '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' ,                        # required
    region:                'ap-northeast-2',             # optional, defaults to 'us-east-1'
  }
  config.fog_directory  = 'test-server-likelion'   
# required
end