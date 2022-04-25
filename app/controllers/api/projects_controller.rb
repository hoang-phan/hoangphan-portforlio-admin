class Api::ProjectsController < Api::BaseController
  def index
    @projects = Project.where.not(company: nil).order(:from_year).order(to_year: :desc).includes(:company)
  end
end
