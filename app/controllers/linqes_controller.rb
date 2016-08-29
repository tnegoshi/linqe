class LinqesController < ApplicationController
  before_action :set_linqe, only: [:show, :edit, :update, :destroy]
  before_action :authorize_user, only: [:new, :create]

  def index
    @linqes = Linqe.all.reverse
  end

  def new
    @linqe = Linqe.new
  end

  def show
  end

  def create
    linqe = current_user.linqes.build(linqe_params)
    if linqe.save
      redirect_to linqe_path(linqe), notice: 'Linqe created.'
    else
      render :new
    end
  end

  def edit
  end

  def update
    @linqe.update(linqe_params)
    redirect_to linqe_path(@linqe)
  end

  def destroy
    @linqe.destroy
    redirect_url = (request.referer.include?("linqes/#{@linqe.id}") ? root_path : :back)

    redirect_to redirect_url, notice: 'Linqe deleted.'
  end

  private

  def linqe_params
    params.require(:linqe).permit(:url, :title, :slug, :description, :submitter_id)
  end

  def set_linqe
    @linqe = Linqe.find(params[:id])
  end
end
