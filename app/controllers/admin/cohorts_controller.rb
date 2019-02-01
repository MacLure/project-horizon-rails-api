class Admin::CohortsController < ApplicationController
  def index
      @cohorts = Cohort.all
      render json: @cohorts
    end

  def create
    company = JSON.parse(params['company'])
    company = Company.create(company)
    render json: company
  end

    def show
      render json: @cohort
    end

    def update
      @cohort = Cohort.find(JSON.parse(params['id']))
      @cohort.update
    end

    def destroy
      @cohort = Cohort.find(JSON.parse(params['id']))
      @cohort.destroy
    end

    private

    def cohort_params
      params.require(:cohort).permit( :start_date, :end_date, :name, :course_type)
    end
end
