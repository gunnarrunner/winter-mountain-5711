class HospitalsController < ApplicationController

  # def index
    
  # end

  def show
    @hospital = Hospital.find(params[:id])
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