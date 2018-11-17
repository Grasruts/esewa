# Esewa

A super light weight ruby wrapper for Esewa.

# Installation

In you gemfile
```
gem 'esewa', :git => 'https://github.com/Grasruts/esewa.git'
```

Run `bundle install`

In your `development.rb` and `production.rb` add

### [ NOTE: Please store your merchant code in environment variables. You can use dotenv gem for it ]

Esewa.merchant_code = < Your esewa merchant/service code>
Esewa.verification_url = "https://ir-user.esewa.com.np/epay/transrec"

To verfiy your payment, run 
```
Esewa::Payment::Verification.verify({
    pid: params[:oid],
    amt: params[:amt],
    rid: params[:refId]
});
```

To check the response from the verification 

```
response = Esewa::Payment::Verification.verify({
    pid: params[:oid],
    amt: params[:amt],
    rid: params[:refId]
});

Nokogiri::XML(response.body)
```