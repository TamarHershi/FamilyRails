class MomsController < ApplicationController

  def index
    @moms = Mom.all
  end
end
