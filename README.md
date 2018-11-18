# Esewa

A super light weight and simple ruby wrapper for Esewa.

# Installation

In you gemfile
```
gem 'esewa', :git => 'https://github.com/Grasruts/esewa.git'
```

Run `bundle install`

In your `development.rb` and `production.rb` add

###  NOTE: Please store your merchant code in environment variables. You can use dotenv gem for it 

```
Esewa.merchant_code = < Your esewa merchant/service code>
Esewa.verification_url = "https://ir-user.esewa.com.np/epay/transrec"
```

To verfiy your payment, run 
```
extend Esewa::Payment::Verification 
verify_esewa_payment({
    pid: params[:oid],
    amt: params[:amt],
    rid: params[:refId]
});
```

To check the response from the verification 

```
extend Esewa::Payment::Verification 
response = verify_esewa_payment({
    pid: params[:oid],
    amt: params[:amt],
    rid: params[:refId]
});

Nokogiri::XML(response.body)
```

## Errors

 #### Merchant/Service code not found

 You need to initialize merchant code by setting value for 
 `Esewa.merchant_code = ""`

 #### Verification URL is empty

  You need to initialize merchant code by setting value for 
 `Esewa.verification_url = "https://ir-user.esewa.com.np/epay/transrec"`