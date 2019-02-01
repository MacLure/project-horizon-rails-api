class Admin::CompaniesController < ApplicationController
  def index
    @company = Company.all
    render json: @company
  end

  def create
    company = JSON.parse(params['company'])
    company = Company.create(company)
    render json: company
  end

  def show
  render json: @company
end

  def update
    @company = Company.find(JSON.parse(params['id']))
    @company.update
  end

  def destroy
    @company = Company.find(JSON.parse(params['id']))
    @company.destroy
  end

  private

  def company_params
    params.require(:company).permit( :phone, :address, :website, :name )
  end
end
