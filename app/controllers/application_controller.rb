class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end
  
  get "/days" do
    Day.all.to_json
  end

  get "/days/:id" do
    Day.find(params[:id]).to_json
  end

  get "/tasks" do
    Task.all.to_json
  end

end
