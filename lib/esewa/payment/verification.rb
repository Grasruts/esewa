module Esewa
  module Payment
    class Verification
      def self.verify(params = {})
        uri = URI.parse(Esewa.verification_url)
        uri.query = URI.encode_www_form(amt: params[:amt], scd: Esewa.merchant_code, pid: params[:pid], rid: params[:rid])
        https = Net::HTTP.new(uri.host, uri.port)
        https.use_ssl = true
        https.get(uri.request_uri)
        # Nokogiri::XML(resp.body).text.strip
      end
    end
  end
end