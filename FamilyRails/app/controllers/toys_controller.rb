class ToysController < ApplicationController

  def get_child
    @child = Child.find(params[:child_id])
  end

  def get_toy
    @toy = Toy.find(params[:id])
  end

  def show
  end

  def index
    get_child
    @toys = @child.toys
  end

  def new
    @toy = Toy.new
  end

  def edit
    get_toy
  end

  def update
    get_toy
    @toy.update(toy_params[:toy])
    redirect_to show
  end

  def create
    Toy.create(toy_params[:toy])
    redirect_to show
  end

  private

  def toy_params
    params.permit(toy: [:kind, :color])
  end
end
