module AppConstants
  
  if Rails.env.development? || Rails.env.test?
  GOOGLE_API_KEY = 
    "ABQIAAAAMC7dq9bWcPaJdGxWPDaq1BTJQa0g3IQ9GZqIMmInSLzwtGDKaBQMJsqyuhJOmM2r4r_WiYnAjVdF8g"
  else # production
    "ABQIAAAAMC7dq9bWcPaJdGxWPDaq1BTVSS5_ibbxvSbvjJtZctKVafn8shT0y6XNeZKdsH46ysYq3agOwv3VnA"
  end
  
end
