class My_App
  def call(env)
    request = Rack::Request.new(env)
    name = request.params['name']
    text = request.params['text']

    Rack::Response.new.finish do |response|
      response['Context-Type'] = 'text/plain'
      response.status = 200
      str = request.POST.to_s.reverse
      response.write str
    end
  end
end