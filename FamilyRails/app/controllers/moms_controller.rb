class MomsController < ApplicationController

  before_action :find_mom, only: [:show, :edit, :update]

  def find_mom
    @mom = Mom.find(params[:id])
  end

  def index
    @moms = Mom.all
  end

  def show
  end

  def show_children
    @mom = Mom.find(params[:mom_id])
    @kids = @mom.children
  end

  def new
    @mom = Mom.new
  end

  def edit
  end

  def create
    Mom.create(mom_params[:mom])
    redirect_to moms_path
  end

  def update
    @mom.update(mom_params[:mom])
    redirect_to show
  end


  private

  def mom_params
    params.permit(mom: [:name, :job, :age])
  end

end
