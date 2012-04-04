class TasksController < ApplicationController

  #before_filter proc { |controller| (controller.action_has_layout = false) if controller.request.xhr? }
  #You can set this filter and don't write 'render :layout => false' for every action

  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
  end

  def new
    @task = Task.new
  end

  def edit
    @task = Task.find(params[:id])
  end

  def create
    @task = Task.new(params[:task])
    render :action => :new unless @task.save
  end

  def update
    @task = Task.find(params[:id])
    render :action => :edit unless @task.update_attributes(params[:task])
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
  end

end
