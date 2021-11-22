class ApiTester
  class << self
    HOST = 'https://letslabel.com/api/v1'
    # HOST = 'http://localhost:3000/api/v1'

    def user
      # { api_key: 'HLctx6KoPw6jmoQ6SDbJf5z6', api_token: '09bd0e2d7bf00c07882f5815b4431621' }
      # { api_key: '7JhbZc9L6f4UNtMjMK8U1LEN', api_token: '4061a92a95d4912e24fba928208cb86b' }
      { api_key: 'cnHtPqJVieqn8sQqZtDzV1oj', api_token: 'eeaaff41d3fa62dd161ade942c54d07c' }
    end

    def content
      {
        customer_reference: "beizhu",
        shipper: shipper,
        recipient: recipient,
        packages: packages,
        carrier: '',
        servicelevel_token: '',
        service_name: '',
        customs_items: customs_items,
        carrier_insurance: ''
        # aes: 'X20210402123456'
      }
# {
#  "shipper": {
#   "name": "Cathy Deng",
#   "company": "Cathy Deng",
#   "phone_number": "2162356567",
#   "address": "2749 Northglen Dr",
#   "city": "Westlake",
#   "state": "OH",
#   "country_code": "US",
#   "postal_code": "44145"
#  },
#  "recipient": {
#   "name": "dong hui yong",
#   "phone_number": "15010653297",
#   "address": "bei jing bei jing hai dian qu xing",
#   "address_2": "fu da jie mei li xiao qu 4 dong 3 d",
#   "city": "Bei jing",
#   "state": "bei jing",
#   "country_code": "CN",
#   "postal_code": "100000",
#   "residential": ""
#  }, 
#  "packages": [{
#   "height": "2",
#   "width": "2",
#   "length": "3",
#   "weight": "2",
#   "declared_value": 0.0
#  }],
#  "customs_items": [{
#   "description": "shoes",
#   "brand": "nike",
#   "quantity": 1,
#   "weight": 2,
#   "price": 100.0,
#   "origin_country": "US"
#  }]
# }      
    end

    def content_for_shipment
      {
        rate_no: "5f0bf3beb3be6b13"
      }
    end    

    def shipper
      # {
      #   name: 'zhang can',
      #   company: '',
      #   phone_number: '5038948090',
      #   address: '20966 E Walnut Canyon',
      #   address_2: '',
      #   city: 'Walnut',
      #   state: 'CA',
      #   country_code: 'US',
      #   postal_code: '91789',
      #   # residential: false
      # }
      {"name"=>"JunAn Express", "company"=>"", "phone_number"=>"5038948090", "address"=>" 6215 NE 92nd Dr", "address_2"=>"", "city"=>"Portland", "state"=>"OR", "country_code"=>"US", "postal_code"=>"97253", "residential"=>false}      

    end

    def customs_items
      [
        {
          description: 'ku zi',
          brand: 'nike',
          quantity: 1,
          weight: '1.11',
          price: 2,
          origin_country: 'US'
        }      
      ]
    end

    def recipient
{"name"=>"JunAn Express", "company"=>"", "phone_number"=>"5038948090", "address"=>"6215 NE 92nd Dr", "address_2"=>"", "city"=>"Portland", "state"=>"OR", "country_code"=>"US", "postal_code"=>"97253", "residential"=>false}            
      # {
      #   name: 'zhang miglei',
      #   company: '',
      #   phone_number: '85260981552',
      #   address: 'Perfect Industrial Building',
      #   address_2: '31 Tai Yau St, San Po Kong',
      #   city: 'Hong Kong',
      #   state: 'HK',
      #   country_code: 'HK',
      #   postal_code: '999077',
      #   email: 'sdzc1014@163.com'
      # }
      # {
      #   "name": "dong hui yong",
      #   "phone_number": "15010653297",
      #   "address": "ming dun dao 4 haolou",
      #   "address_2": "fu da jie mei li xiao qu 4 dong 3 d",
      #   "city": "bei jing",
      #   "state": "bei jing",
      #   "country_code": "CN",
      #   "postal_code": "100010",
      #   "residential": ""
      #  }      
    end    

    def packages
      [
        {
          height:         "5" ,
          width:          "6",
          length:         "7",
          weight:         "5",
          signature_option: "NONE",
          declared_value: ''
        }        
      ]
    end

    def delivery_order_items
      [
        {
          client_item_no: '000001',
          name: 'First Item',
          unit_price: 30.0,
          quantity: 1
        },

        {
          client_item_no: '000002',
          name: 'Second Item',
          unit_price: 40.0,
          quantity: 3
        }
      ]
    end

    def make_payload
      payload = content.to_json
      sign_str = sign(payload)

      { api_key: user[:api_key], content: payload, sign: sign_str }
    end

    def make_cancel_payload
      payload = content_for_shipment.to_json
      sign_str = sign(payload)

      { api_key: user[:api_key], content: payload, sign: sign_str }      
    end

    def sign(content)
      Digest::MD5.hexdigest(content + user[:api_token])
    end

    def report_quote
      payload = make_payload

      rsp = RestClient::Request.execute(
        :url => "#{HOST}/shipments/quote.json",         
        payload: payload,
        :method => :post
        # :verify_ssl => false
      )

      p payload
      # rsp = RestClient.post "#{HOST}/shipments/quote.json", payload, :verify_ssl => false
      puts rsp.body
    end


    def report_quote_usps
      payload = make_payload

      p payload
      rsp = RestClient.post "#{HOST}/shipments/usps_quote.json", payload
      puts rsp.body
    end

    def report_create
      payload = make_payload

      rsp = RestClient::Request.execute(
        :url => "#{HOST}/shipments/label.json",         
        payload: payload,
        :method => :post, 
        :verify_ssl => false
      )

      p payload
      # rsp = RestClient.post "#{HOST}/shipments/label.json", payload, :verify_ssl => false
      puts rsp.body
    end

    def report_cancel
      payload = make_cancel_payload

      p payload
      rsp = RestClient.post "#{HOST}/shipments/cancel.json", payload
      puts rsp.body      
    end

    def report_track
      payload = make_cancel_payload

      p payload
      rsp = RestClient.post "#{HOST}/shipments/track.json", payload
      puts rsp.body           
    end
  end
end