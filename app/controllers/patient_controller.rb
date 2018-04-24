class PatientController < ApplicationController

  skip_before_action :verify_authenticity_token

  def index
    @patients = Patient.all
    if @patients
      render :json => {:patients => @patients},status: 200
    else
      render :json => {:msg => "Something Went Wrong"},status: 500
    end
  end

  def create
    @patient = Patient.new(patient_params)
    if @patient.save
      render :json=> {:patient => @patient, :redirect_to => "patients_all.html",:msg=> "patient created successfully" },status: 200
    else
      render :json=> {:msg=> "patient created failed" },status: 500
    end
  end

  def patient_params
    params.require(:patient).permit(:first_name, :last_name, :email, :phone, :gender, :address, :referred_by)
  end
end
