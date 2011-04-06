module AppConstants
  
  if Rails.env.development? || Rails.env.test?
  GOOGLE_API_KEY = 
    "ABQIAAAAMC7dq9bWcPaJdGxWPDaq1BTJQa0g3IQ9GZqIMmInSLzwtGDKaBQMJsqyuhJOmM2r4r_WiYnAjVdF8g"
  else # production
    "ABQIAAAA3o0gpoxhBa8wt07axEnPEhSFtz6H3hWtsjLlk5R7ntmycOL6mhTPErQqRhAO8dr_JO8U3PVJSClDqg"
  end
  
end
