class TasksController < ApplicationController
  before_action :set_task, only: [:show, :edit, :update, :destroy]
  def index
    @tasks = Task.all
  end

  def show
		@task = Task.find(params[:id])
	end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(params_task)
    @task.save
    redirect_to task_path(@task)
  end

  def edit
  end

  def update
    @task.update(params_task)
    redirect_to task_path(@task)
  end

  def destroy
    @task.destroy
    redirect_to tasks_path
  end

  private

  def params_task
    params.require(:task).permit(:title, :details, :completed)
  end

  def set_task 
    @task = Task.find(params[:id])
  end
end





# class RestaurantsController < ApplicationController
#   before_action :set_restaurant, only: [:show, :edit, :update, :destroy]

#   def index
#     @restaurants = Restaurant.all
#   end

#   def show
#   end

#   def new
#     @restaurant = Restaurant.new
#   end

#   def create
#     @restaurant = Restaurant.new(params_restaurant)
#     @restaurant.save
#     redirect_to restaurant_path(@restaurant)
#     # redirect_to prefixOfTheRoute_path(dynamic_input)
#   end

#   def edit
#   end

#   def update
#     @restaurant.update(params_restaurant)
#     redirect_to restaurant_path(@restaurant)
#   end

#   def destroy
#     @restaurant.destroy
#     redirect_to restaurants_path
#   end

#   private

#   def set_restaurant
#     @restaurant = Restaurant.find(params[:id])
#   end

#   def params_restaurant
#     params.require(:restaurant).permit(:name, :address, :rating)
#   end

# end
