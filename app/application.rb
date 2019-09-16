# require 'pry'

class Application
    
    def call(env)
        resp = Rack::Response.new
        # binding.pry
        
        time = Time.now.hour

        if time <= 12 
            resp.write "Good Morning"
        else 
            resp.write "Good Afternoon"
        end 
        
        resp.finish
        # if Time.now < 12
        #     resp.write "Good Moring"
        # else 
        #     resp.write "Good Afternoon"
        # end 
        # binding.pry
    end 
end 