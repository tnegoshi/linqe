class LinqesController < ApplicationController
  before_action :set_linqe, only: [:show, :edit, :update, :destroy]
  before_action :authorize_user, only: [:new, :create]
  # beofre_action :authorize_submitter, only: [:edit, :update, :destroy]

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
      redirect_to linqe_path(linqe), notice: 'Linqe created.'
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
    @linqe.destroy

    if current_page?(root_path)
      redirect_to root_path, notice: 'Linqe deleted.'
    elsif current_page?(linqe_path(@linqe))
      redirect_to user_path(@linqe.user), notice: 'Linqe deleted.'
    end
  end

  private

  def linqe_params
    params.require(:linqe).permit(:url, :title, :slug, :submitter_id)
  end

  def set_linqe
    @linqe = Linqe.find(params[:id])
  end


end
