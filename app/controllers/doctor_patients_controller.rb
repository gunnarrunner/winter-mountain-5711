class DoctorPatientsController < ApplicationController

  # def index
    
  # end

  # def show
    
  # end

  # def new
    
  # end

  # def create
    
  # end

  # def edit
    
  # end

  # def update
    
  # end

  def destroy
    patient_associated = DoctorPatient.find_by(patient: params[:patients_id])

    patient_associated.delete

    redirect_to "/doctors/#{patient_associated.doctor_id}"
  end

  # private

  # def _params
  #   params.permit(:)
  # end
end