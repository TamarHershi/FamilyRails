class ChildrenController < ApplicationController

  def find_child
    @child = Child.find(params[:id])
  end

  def index
    @children = Child.all
  end

  def show
    find_child
  end

  def show_toys
    if !params[:child_id].nil?
      child = Child.find(params[:child_id])
      @toys = child.toys
    else
    find_child
    @toys = @child.toys
    end
  end



end
