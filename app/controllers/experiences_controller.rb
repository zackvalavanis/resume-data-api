class ExperiencesController < ApplicationController
  def index
    @experiences = Experience.all
    render :index
  end

  def create
    @experience = Experience.create(
      student_id: params[:student_id],
      start_date: params[:start_date],
      end_date: params[:end_date],
      job_title: params[:job_title],
      company_name: params[:company_name],
      details: params[:details],
    )
    render :show
  end

  def show
    @experience = Experience.find_by(id: params[:id])
    render :show
  end

  def update
    @experience = Experience.find_by(id: params[:id])
    @experience.update(
      student_id: params[:student_id] || @experience.student_id,
      start_date: params[:start_date] || @experience.start_date,
      end_date: params[:end_date] || @experience.end_date,
      job_title: params[:job_title] || @experience.job_title,
      company_name: params[:company_name] || @experience.company_name,
      details: params[:details] || @experience.details,
    )
    render :show
  end

  def destroy
    @experience = Experience.find_by(id: params[:id])
    @experience.destroy
    render json: { message: "Experience destroyed successfully" }
  end

end
