class JobsController < ApplicationController

  skip_before_action :verify_authenticity_token

  def create
    @job = Job.create(job_title: params[:job_title], job_description: params[:job_description], years_of_experience: params[:years_of_experience], education_requirement: params[:education_requirement], industry: params[:industry], base_salary: params[:base_salary], employment_type_id: params[:employment_type_id], url: params[:url], employer_name: params[:employer_name], employer_description: params[:employer_description])

    render 'jobs/create.jbuilder' 
  end

  def show
    @job = Job.find_by(id: params[:id])
    if @job 
      render 'jobs/show'
     else
      render json: { success: false }
    end
  end
  
  def index
    @jobs = Job.all
    render 'jobs/index' # can be omitted
  end

end
