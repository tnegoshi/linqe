class LinqesController < ApplicationController
  before_action :set_linqe, only: [:show]
  before_action :authorize_user, only: [:new, :create, :edit, :update]

  def index
    @linqes = Linqe.all
  end

  def new
    @linqe = Linqe.new
  end

  def show
  end

  def create
    linqe = current_user.linqes.build(linqe_params)
    if linqe.save
      redirect_to linqe_path(linqe), notice: 'Linqe was successfully created.'
    else
      render :new
    end
  end

  def edit
  end

  def destroy
  end

  def update
  end

  private

  def linqe_params
    params.require(:linqe).permit(:url, :title, :slug, :submitter_id)
  end

  def set_linqe
    @linqe = Linqe.find(params[:id])
  end


end
