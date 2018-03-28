class Application

  def call(env)
    resp = Rack::Response.new
    x = Kernel.rand(1..20)
    y = Kernel.rand(1..20)
    z = Kernel.rand(1..20)
    if x == y && x == z
      resp.write "You Win"
    else
      resp.write "You Lose"
    end
    resp.finish
  end

end
