#S3
CarrierWave.configure do |config|
  config.fog_provider = 'fog/aws'                        # required
  config.fog_credentials = {
    provider:              'AWS',                        # required
    aws_access_key_id:     ENV["aws_access_key_id"],                        # required
    aws_secret_access_key: ENV["aws_secret_access_key"],                        # required
    region:                'ap-northeast-2',                  # optional, defaults to 'us-east-1'
  }
  config.fog_directory  = ENV["aws_s3_directory"]                          # required
end

