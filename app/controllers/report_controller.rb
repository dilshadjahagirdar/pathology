class ReportController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    @reports = Report.all
    if @reports
      render :json => {:redirect_to => "/reports_all.html", :reports => @reports},status: 200
    else
      render :json => {:redirect_to => "/500.html", :msg => "Something went wrong"},status:500
    end
  end

  def create
    @report = Report.new(report_params)
    @report.save
    @patient = Patient.find(@report.patient_id)
    @patient.report_id = @report.id
    if @patient.save
      render :json => {:redirect_to => "/reports_all.html", :msg => "report crerated successfully"},status: 200
    else
      render :json => {:redirect_to => "/500.html",:msg => "Report creation failed"},status: 500
    end
  end
end
