class Api::PetProjectsController < Api::BaseController
  def index
    @projects = Project.where(company: nil).order(:from_year).order(to_year: :desc)
  end
end
