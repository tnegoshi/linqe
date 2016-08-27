class LinqesController < ApplicationController


  def new
    @linqe = Linqe.new
  end

  def show
    @linqe = Linqe.find(params[:id])
  end

  def edit

  end

  def index
    @linqes = Linqe.all
  end

  # def create

  # end

  def destroy
  end

  def update
  end

  private

  def linqe_params
    params.require(:linqe).permit(:url, :title, :slug, :submitter_id)
  end


end
