require 'aptible/billforward'

Aptible::BillForward.configure do |config|
  config.root_url = 'https://api-sandbox.billforward.net/2014.223.0'
  config.access_token = ENV['BILLFORWARD_ACCESS_TOKEN']
end
