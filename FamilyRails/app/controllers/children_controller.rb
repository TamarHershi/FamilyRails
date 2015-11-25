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
    find_child
    @toys = @child.toys
  end

end
