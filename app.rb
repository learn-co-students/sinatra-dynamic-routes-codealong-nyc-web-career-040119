require_relative 'config/environment'

class App < Sinatra::Base

  # This is a sample static route.
  get '/hello' do
    "Hello World!"
  end

  # This is a sample dynamic route.
  get "/hello/:name" do
    # binding.pry
    @user_name = params[:name]
    "Hello YOU #{@user_name}!"
  end

  # Code your final two routes here:
  all_the_medicines = [
    # <Medicine:0x007fb739b1af88 @id=1, @name="penicillin" @group="antibiotic">,
    # <Medicine:0x007fb739b1af88 @id=2, @name="advil" @group="anti-inflammatory">,
    # <Medicine:0x007fb739b1af88 @id=3, @name="benadryl" @group="anti-histamine">
  ]
  get '/goodbye/:name' do 
    
      # binding.pry
      @user_name = params[:name]
      "Goodbye, #{@user_name}."
  end

  get '/multiply/:num1/:num2' do 
    @multiple = params[:num1].to_i * params[:num2].to_i
    "#{@multiple}"
  end
end