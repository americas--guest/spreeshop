# Configure Spree Preferences
#
# Note: Initializing preferences available within the Admin will overwrite any changes that were made through the user interface when you restart.
#       If you would like users to be able to update a setting with the Admin it should NOT be set here.
#
# In order to initialize a setting do:
# config.setting_name = 'new value'
Spree.config do |config|
	#config.use_s3 = true
  #config.s3_bucket = '19thHole'
  #config.s3_access_key = "AKIAIAOUVZCCUC6JAJPA"
  #config.s3_secret = "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"

  attachment_config = {
      s3_credentials: {
          access_key_id: ENV['AKIAIAOUVZCCUC6JAJPA'],
          secret_access_key: ENV['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'],
          bucket: ENV['19thHole'],
      },

      storage:        :s3,
      s3_headers:     { "Cache-Control" => "max-age=31557600" },
      s3_protocol:    "https",
      bucket:         ENV['S3_BUCKET_NAME'],

      styles: {
          mini:     "48x48>",
          small:    "100x100>",
          product:  "240x240>",
          large:    "600x600>"
      },

      path:          ":rails_root/public/spree/products/:id/:style/:basename.:extension",
      default_url:   "/spree/products/:id/:style/:basename.:extension",
      default_style: "product",
  }

  attachment_config.each do |key, value|
    Spree::Image.attachment_definitions[:attachment][key.to_sym] = value
  end
 
  # Example:
  # Uncomment to override the default site name.
  # config.site_name = "Spree Demo Site"
  config.override_actionmailer_config = true
  config.mails_from = "no-reply@yourdomain.com"

config.enable_mail_delivery = true
  config.mail_bcc = "sul@19thholeswag.com"



end

  #Paperclip.interpolates(:s3_eu_url) do |attachment, style|
#{}"#{attachment.s3_protocol}://#{Spree::Config[:s3_host_alias]}/#{attachment.bucket_name}/#{attachment.path(style).gsub(%r{^/},"")}"
#end

Spree.user_class = "Spree::User"
