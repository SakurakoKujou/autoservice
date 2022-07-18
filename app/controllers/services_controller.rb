class ServicesController < ApplicationController
before_action :set_service, only: [:show, :edit, :update, :destroy]

def index
  @service= Service.all()
  end

  def new
    @service = Service.new
  end

  def create
    @service=Service.new(service_params)
    @service.save
    redirect_to @service
  end


  def show
  end

  def edit
  end

  def update
    if @service.update(service_params)
      redirect_to @service
    else
      render 'edit'
    end
  end

  def destroy
    @service.destroy
    redirect_to services_path
  end

  
  def service_params
    params.require(:service).permit(:name, :category_id, :performer_id)
  end

  def set_service
    @service = Service.find(params[:id])
    end
end



