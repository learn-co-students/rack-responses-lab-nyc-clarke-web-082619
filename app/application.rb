class Application
    def call(env)
    resp = Rack::Response.new

    time = Time.now.strftime("%H") 

    if time.to_i >= 12
        resp.write "Good Afternoon!"
    elsif time.to_i < 12
        resp.write "Good Morning!"
    end

    resp.finish
    end

end