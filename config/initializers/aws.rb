CarrierWave.configure do |config|
  config.fog_provider = 'fog/aws'  # required
  config.fog_credentials = {
    provider:              'AWS',                        # required
    aws_access_key_id:     'AKIAIARMS5LPIH4XLW4Q',                        # required
    aws_secret_access_key: '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' ,                        # required
    region:                'ap-northeast-2',             # optional, defaults to 'us-east-1'
  }
  config.fog_directory  = 'test-server-likelion'   
# required
end