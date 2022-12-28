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

  get "/tasks/:id" do
    Task.find(params[:id]).to_json
  end

  post "/tasks" do
    new_task = Task.create(
      task_name: params[:task_name],
      day_id: params[:day_id]
    )
    new_task.to_json
  end

  delete "/tasks/:id" do
    task = Task.find(params[:id])
    task.destroy
    task.to_json
  end

end
