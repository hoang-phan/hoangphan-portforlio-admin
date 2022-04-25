class Api::CompaniesController < Api::BaseController
  def index
    @companies = Company.order(:from_year).includes(:projects)
  end
end
