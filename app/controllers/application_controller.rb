class ApplicationController < Sinatra::Base

  set :default_content_type, 'application/json'
  
  get "/days" do
    Day.all.to_json
  end

  get "/days/:id" do
    Day.find(params[:id]).to_json
  end

  get "/tasks" do
    Task.all.to_json(:include => :day)
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

  patch "/tasks/:id" do
    task = Task.find(params[:id])
    task.update(
      task_name: params[:task_name],
      day_id: params[:day_id]
    )
    task.to_json
  end

  get "/bills" do
    Bill.all.to_json
  end

  post "/bills" do
    new_bill = Bill.create(
      bill_name: params[:bill_name],
      amount: params[:amount],
      month_day_id: params[:month_day_id]
    )
    new_bill.to_json
  end

  delete "/bills/:id" do
    bill = Bill.find(params[:id])
    bill.destroy
    bill.to_json
  end

  patch "/bills/:id" do
    bill = Bill.find(params[:id])
    bill.update(
      bill_name: params[:bill_name],
      amount: params[:amount],
      month_day_id: params[:month_day_id]
    )
    bill.to_json
  end

  get "/month_days" do
    MonthDay.all.order(:day).to_json
  end

  get "/month_days/:id" do
    MonthDay.find(params[:id]).to_json
  end

  post "/month_days" do
    MonthDay.find_or_create_by(day: params[:day]).to_json
  end

end