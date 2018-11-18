module Esewa
  module Util
    def validate_merchant_code
      raise "Merchant/Service code not found" unless Esewa.merchant_code
    end

    def validate_verification_url
      raise "Verification URL is empty" unless Esewa.verification_url
    end
  end
end