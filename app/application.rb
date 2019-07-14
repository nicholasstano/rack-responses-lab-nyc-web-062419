class Application

  def call(env)
    resp = Rack::Response.new
 
    time = Time.now.strftime('%H:%M')

    if time > '12:00'
    	resp.write "Good Afternoon"
    elsif time < '12:00'
    	resp.write "Good Morning"
    end

 	resp.finish
  end

end