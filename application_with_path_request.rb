class Application
 
    @@items = ["Apples","Carrots","Pears"]
   
    def call(env)
      resp = Rack::Response.new
      req = Rack::Request.new(env)
   
      if req.path.match(/items/)
        @@items.each do |item|
          resp.write "#{item}\n"
        end
      else
        resp.write "Path Not Found"
      end
   
      resp.finish
    end
  end