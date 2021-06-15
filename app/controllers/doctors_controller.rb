class DoctorsController < ApplicationController

  # def index
    
  # end

  def show
    @doctor = Doctor.find(params[:id])
    @hospital = @doctor.hospital.name
  end

  # def new
    
  # end

  # def create
    
  # end

  # def edit
    
  # end

  # def update
    
  # end

  # def destroy
    
  # end

  # private

  # def _params
  #   params.permit(:)
  # end
end