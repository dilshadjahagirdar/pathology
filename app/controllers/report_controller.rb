class ReportController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    @reports = Report.all
    if @reports
      render 'index', formats: [:json], handlers: [:jbuilder], status: 200
      # render :json => {:redirect_to => "/reports_all.html", :reports => @reports},status: 200
    else
      render :json => {:redirect_to => "/500.html", :msg => "Something went wrong"},status:500
    end
  end

  def create
    # Create test
    @test = Test.createTest(params[:test])
    # Create report
    @report = Report.new
    @report.patient_id = params[:patient_id]
    @report.test_id = @test.id
    @report.save
    # Update patient
    @patient = Patient.find(@report.patient_id)
    @patient.report_id = @report.id
    if @patient.save
      render :json => {:redirect_to => "/reports_all.html", :msg => "report crerated successfully"},status: 200
    else
      render :json => {:redirect_to => "/500.html",:msg => "Report creation failed"},status: 500
    end
  end

  private

  def report_params
    params[:customer][:organization_id] = current_user.organization_id
    params.require(:report).permit(:id, :firstName, :email, :password, :organization_id, :default_ship_type, :lastName, :initials, :phoneNumber, :default_batch_address_id )
  end

end
