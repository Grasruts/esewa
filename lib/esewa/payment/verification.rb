require 'esewa/util'

include Esewa::Util

module Esewa
  module Payment
    module Verification
      
      def self.extended
        validate_merchant_code
        validate_verification_url
      end

      def verify(params = {})
        uri = URI.parse(Esewa.verification_url)
        uri.query = URI.encode_www_form(amt: params[:amt], scd: Esewa.merchant_code, pid: params[:pid], rid: params[:rid])
        https = Net::HTTP.new(uri.host, uri.port)
        https.use_ssl = true
        https.get(uri.request_uri)
      end
    end
  end
end