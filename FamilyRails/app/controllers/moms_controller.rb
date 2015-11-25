class MomsController < ApplicationController

  def index
    @moms = Mom.all
  end

  def show
    @mom = Mom.find(params[:id])
  end

  def show_children
    mom = Mom.find(params[:mom_id])
    @kids = mom.children
  end
end
