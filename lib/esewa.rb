require "esewa/version"

require "esewa/payment/verification"

module Esewa
  class << self
    attr_accessor :merchant_code, :api_url, :verification_url
  end
end
