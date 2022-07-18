class PerformersController < ApplicationController
  before_action :set_performer, only: [:show, :edit, :update, :destroy]

  def index
    @performer = Performer.all()
  end

  def new
    @performer= Performer.new
  end

  def create
    @performer=Performer.new(performer_params)
    @performer.save
    redirect_to @performer
  end


  def show
  end

  def edit
  end

  def update
    if @performer.update(performer_params)
      redirect_to @performer
    else
      render 'edit'
    end
  end

  def destroy
    @performer.destroy
    redirect_to performers_path
  end

  def performer_params
    params.require(:performer).permit(:firstName, :lastName)
  end
  
  def set_performer
    @performer = Performer.find(params[:id])
  end
end
