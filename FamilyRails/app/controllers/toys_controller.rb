class ToysController < ApplicationController

  def get_child
    @child = Child.find(params[:child_id])
  end

  def get_toy
    @toy = Toy.find(params[:id])
  end


  def index
      get_toy
      child = Child.find(@toy.child_id)
      @toys = child.toys
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
    redirect_to show_toys_children_path(@toy.child_id)
  end

  def create
    Toy.create(toy_params[:toy])
    redirect_to index
  end

  private

  def toy_params
    params.permit(toy: [:kind, :color])
  end
end
